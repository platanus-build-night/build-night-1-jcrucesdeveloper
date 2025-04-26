import { ref, Ref } from 'vue'

interface WhisperInstance {
  process_audio: (audioData: Float32Array) => Promise<string>
}

interface ConnectionWebASM {
  isInitialized: Ref<boolean>
  isProcessing: Ref<boolean>
  whisperInstance: Ref<WhisperInstance | null>
  transcribedText: Ref<string>
  initWhisper: () => Promise<boolean>
  processAudioData: (audioData: Float32Array) => Promise<string | null>
  clearTranscription: () => void
}

export function useConnectionWebASM(): ConnectionWebASM {
  const isInitialized = ref<boolean>(false)
  const isProcessing = ref<boolean>(false)
  const whisperInstance = ref<WhisperInstance | null>(null)
  const transcribedText = ref<string>('')

  const initWhisper = async (): Promise<boolean> => {
    try {
      // Cargar el módulo WebAssembly
      const response = await fetch('/whisper.wasm')
      const bytes = await response.arrayBuffer()
      const module = await WebAssembly.instantiate(bytes)
      
      // Inicializar la instancia de Whisper
      whisperInstance.value = module.instance.exports as WhisperInstance
      isInitialized.value = true
      return true
    } catch (error) {
      console.error('Error al inicializar Whisper:', error)
      return false
    }
  }

  const processAudioData = async (audioData: Float32Array): Promise<string | null> => {
    if (!isInitialized.value || !whisperInstance.value) {
      console.error('Whisper no está inicializado')
      return null
    }

    try {
      isProcessing.value = true
      
      // Procesar el audio con Whisper
      const result = await whisperInstance.value.process_audio(audioData)
      
      // Actualizar el texto transcrito
      transcribedText.value = result
      
      return result
    } catch (error) {
      console.error('Error al procesar audio:', error)
      return null
    } finally {
      isProcessing.value = false
    }
  }

  const clearTranscription = (): void => {
    transcribedText.value = ''
  }

  return {
    isInitialized,
    isProcessing,
    whisperInstance,
    transcribedText,
    initWhisper,
    processAudioData,
    clearTranscription
  }
} 