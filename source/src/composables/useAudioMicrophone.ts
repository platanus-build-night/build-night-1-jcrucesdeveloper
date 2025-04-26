import { ref, Ref } from 'vue'

interface AudioMicrophone {
  isRecording: Ref<boolean>
  startRecording: () => Promise<boolean>
  stopRecording: () => void
  onAudioData: (callback: (data: Float32Array) => void) => void
}

export function useAudioMicrophone(): AudioMicrophone {
  const isRecording = ref<boolean>(false)
  const audioContext = ref<AudioContext | null>(null)
  const mediaStream = ref<MediaStream | null>(null)
  const audioWorkletNode = ref<AudioWorkletNode | null>(null)
  const audioDataCallback = ref<((data: Float32Array) => void) | null>(null)

  const startRecording = async (): Promise<boolean> => {
    try {
      const stream = await navigator.mediaDevices.getUserMedia({ audio: true })
      mediaStream.value = stream
      
      // Crear contexto de audio
      const AudioContext = window.AudioContext || (window as any).webkitAudioContext
      audioContext.value = new AudioContext()
      
      // Esperar a que el contexto esté listo
      await audioContext.value.audioWorklet.addModule('/audio-processor.js')
      
      const source = audioContext.value.createMediaStreamSource(stream)
      audioWorkletNode.value = new AudioWorkletNode(audioContext.value, 'audio-processor')
      
      // Conectar los nodos
      source.connect(audioWorkletNode.value)
      audioWorkletNode.value.connect(audioContext.value.destination)
      
      // Configurar el manejador de mensajes
      audioWorkletNode.value.port.onmessage = (event: MessageEvent) => {
        if (audioDataCallback.value) {
          audioDataCallback.value(event.data)
        }
      }
      
      isRecording.value = true
      return true
    } catch (error) {
      console.error('Error al acceder al micrófono:', error)
      return false
    }
  }

  const stopRecording = (): void => {
    if (mediaStream.value) {
      mediaStream.value.getTracks().forEach(track => track.stop())
    }
    if (audioContext.value) {
      audioContext.value.close()
    }
    if (audioWorkletNode.value) {
      audioWorkletNode.value.disconnect()
    }
    isRecording.value = false
  }

  const onAudioData = (callback: (data: Float32Array) => void): void => {
    audioDataCallback.value = callback
  }

  return {
    isRecording,
    startRecording,
    stopRecording,
    onAudioData
  }
} 