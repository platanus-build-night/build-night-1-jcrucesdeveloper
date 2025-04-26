import { ref } from 'vue'

export function useConnectionWebASM() {
  const isInitialized = ref(false)
  const isProcessing = ref(false)
  const whisperInstance = ref(null)
  const transcribedText = ref('')

  const initWhisper = async () => {
    try {
      // Cargar el módulo WebAssembly
      const response = await fetch('/whisper.wasm')
      const bytes = await response.arrayBuffer()
      const module = await WebAssembly.instantiate(bytes)
      
      // Inicializar la instancia de Whisper
      whisperInstance.value = module.instance.exports
      isInitialized.value = true
      return true
    } catch (error) {
      console.error('Error al inicializar Whisper:', error)
      return false
    }
  }

  const processAudioData = async (audioData) => {
    if (!isInitialized.value || !whisperInstance.value) {
      console.error('Whisper no está inicializado')
      return
    }

    try {
      isProcessing.value = true
      
      // Convertir los datos de audio a formato adecuado para Whisper
      const audioBuffer = new Float32Array(audioData)
      
      // Procesar el audio con Whisper
      const result = await whisperInstance.value.process_audio(audioBuffer)
      
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

  const clearTranscription = () => {
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