<template>
  <div class="flex flex-col items-center gap-4 p-4">
    <button 
      @click="toggleRecording" 
      :class="[
        'px-4 py-2 rounded-lg text-white transition-all duration-300',
        isRecording 
          ? 'bg-red-500 hover:bg-red-600' 
          : 'bg-green-500 hover:bg-green-600'
      ]"
      class="focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-opacity-50"
    >
      {{ isRecording ? 'Detener' : 'Iniciar' }} grabación
    </button>
    <div v-if="isRecording" class="flex items-center gap-2 text-red-500">
      <span class="w-2.5 h-2.5 bg-red-500 rounded-full animate-pulse"></span>
      Grabando...
    </div>
  </div>
</template>

<script setup lang="ts">
import { useAudioMicrophone } from '../composables/useAudioMicrophone'

const { isRecording, startRecording, stopRecording, onAudioData } = useAudioMicrophone()

const toggleRecording = async () => {
  if (isRecording.value) {
    stopRecording()
  } else {
    await startRecording()
  }
}

// Configurar el callback para recibir los datos de audio
onAudioData((audioData: Float32Array) => {
  // Aquí puedes procesar los datos de audio como necesites
  console.log('Datos de audio recibidos:', audioData)
})
</script> 