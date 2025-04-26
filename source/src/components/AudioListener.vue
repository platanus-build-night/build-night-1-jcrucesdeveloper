<template>
  <div class="flex flex-col items-center gap-4 p-4">
    <button 
      @click="toggleRecording" 
      :class="[
        'p-4 rounded-full transition-all duration-300 transform hover:scale-105 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-opacity-50',
        isRecording 
          ? 'bg-red-500 hover:bg-red-600 shadow-lg shadow-red-500/50' 
          : 'bg-gray-800 hover:bg-gray-900 shadow-lg shadow-gray-800/50'
      ]"
      :disabled="!isInitialized || isProcessing"
    >
      <svg 
        xmlns="http://www.w3.org/2000/svg" 
        class="h-8 w-8 text-white" 
        fill="none" 
        viewBox="0 0 24 24" 
        stroke="currentColor"
      >
        <path 
          stroke-linecap="round" 
          stroke-linejoin="round" 
          stroke-width="2" 
          d="M19 11a7 7 0 01-7 7m0 0a7 7 0 01-7-7m7 7v4m0 0H8m4 0h4m-4-8a3 3 0 01-3-3V5a3 3 0 116 0v6a3 3 0 01-3 3z" 
        />
      </svg>
    </button>
    <div v-if="isRecording" class="flex items-center gap-2 text-red-500 animate-pulse">
      <span class="w-2.5 h-2.5 bg-red-500 rounded-full"></span>
      <span class="font-medium">Grabando...</span>
    </div>
    <div v-if="isProcessing" class="flex items-center gap-2 text-blue-500">
      <span class="w-2.5 h-2.5 bg-blue-500 rounded-full animate-pulse"></span>
      <span class="font-medium">Procesando audio...</span>
    </div>
    <div v-if="transcribedText" class="mt-4 p-4 bg-gray-100 rounded-lg w-full max-w-md">
      <p class="text-gray-800">{{ transcribedText }}</p>
    </div>
  </div>
</template>

<script setup lang="ts">
import { onMounted } from 'vue'
import { useAudioMicrophone } from '../composables/useAudioMicrophone'
import { useConnectionWebASM } from '../composables/useConnectionWebASM'

const { isRecording, startRecording, stopRecording, onAudioData } = useAudioMicrophone()
const { 
  initWhisper, 
  processAudioData, 
  isInitialized, 
  isProcessing, 
  transcribedText 
} = useConnectionWebASM()

// Inicializar Whisper cuando el componente se monte
onMounted(async () => {
  const initialized = await initWhisper()
  if (!initialized) {
    console.error('Error al inicializar Whisper')
  }
})

const toggleRecording = async () => {
  if (isRecording.value) {
    stopRecording()
  } else {
    await startRecording()
  }
}

// Configurar el callback para recibir los datos de audio
onAudioData(async (audioData: Float32Array) => {
  if (isInitialized.value) {
    const result = await processAudioData(audioData)
    if (result) {
      console.log('Texto transcrito:', result)
    }
  }
})
</script> 