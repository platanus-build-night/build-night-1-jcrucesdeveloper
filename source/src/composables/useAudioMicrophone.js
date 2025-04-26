import { ref } from 'vue'

export function useAudioMicrophone() {
  const isRecording = ref(false)
  const audioContext = ref(null)
  const mediaStream = ref(null)
  const audioProcessor = ref(null)

  const startRecording = async () => {
    try {
      const stream = await navigator.mediaDevices.getUserMedia({ audio: true })
      mediaStream.value = stream
      
      // Crear contexto de audio
      audioContext.value = new (window.AudioContext || window.webkitAudioContext)()
      const source = audioContext.value.createMediaStreamSource(stream)
      
      // Configurar el procesador de audio
      audioProcessor.value = audioContext.value.createScriptProcessor(4096, 1, 1)
      
      // Conectar los nodos
      source.connect(audioProcessor.value)
      audioProcessor.value.connect(audioContext.value.destination)
      
      isRecording.value = true
      return true
    } catch (error) {
      console.error('Error al acceder al micrófono:', error)
      return false
    }
  }

  const stopRecording = () => {
    if (mediaStream.value) {
      mediaStream.value.getTracks().forEach(track => track.stop())
    }
    if (audioContext.value) {
      audioContext.value.close()
    }
    isRecording.value = false
  }

  const onAudioData = (callback) => {
    if (audioProcessor.value) {
      audioProcessor.value.onaudioprocess = (e) => {
        const inputData = e.inputBuffer.getChannelData(0)
        callback(inputData)
      }
    }
  }

  return {
    isRecording,
    startRecording,
    stopRecording,
    onAudioData
  }
} 