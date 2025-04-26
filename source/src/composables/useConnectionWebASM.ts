import { ref, Ref } from 'vue'

interface ConnectionWebASM {
  isInitialized: Ref<boolean>
  isProcessing: Ref<boolean>
  transcribedText: Ref<string>
  initWhisper: () => Promise<boolean>
  processAudioData: (audioData: Float32Array) => Promise<string | null>
  clearTranscription: () => void
}

export function useConnectionWebASM(): ConnectionWebASM {
  const isInitialized = ref<boolean>(false)
  const isProcessing = ref<boolean>(false)
  const transcribedText = ref<string>('')
  let audioWorker: Worker | null = null

  const initWhisper = async (): Promise<boolean> => {
    try {
      // Inicializar el worker
      audioWorker = new Worker(new URL('../workers/audioProcessor.js', import.meta.url), { type: 'module' })
      
      // Configurar el manejador de mensajes del worker
      audioWorker.onmessage = (e) => {
        const { status, text, error } = e.data
        if (status === 'ready') {
          isInitialized.value = true
        } else if (status === 'success') {
          transcribedText.value = text
          isProcessing.value = false
        } else if (status === 'error') {
          console.error('Error en el worker:', error)
          isProcessing.value = false
        }
      }

      return true
    } catch (error) {
      console.error('Error al inicializar Whisper:', error)
      return false
    }
  }

  const processAudioData = async (audioData: Float32Array): Promise<string | null> => {
    if (!isInitialized.value || !audioWorker) {
      console.error('Whisper no está inicializado')
      return null
    }

    try {
      isProcessing.value = true
      
      // Enviar los datos de audio al worker
      audioWorker.postMessage({ audioData })
      
      // Esperar la respuesta del worker
      return new Promise((resolve) => {
        const handler = (e: MessageEvent) => {
          const { status, text } = e.data
          if (status === 'success') {
            resolve(text)
          } else {
            resolve(null)
          }
          audioWorker?.removeEventListener('message', handler)
        }
        audioWorker?.addEventListener('message', handler)
      })
    } catch (error) {
      console.error('Error al procesar audio:', error)
      return null
    }
  }

  const clearTranscription = (): void => {
    transcribedText.value = ''
  }

  return {
    isInitialized,
    isProcessing,
    transcribedText,
    initWhisper,
    processAudioData,
    clearTranscription
  }
} 