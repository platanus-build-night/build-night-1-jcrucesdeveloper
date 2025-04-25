<script setup>
import { ref } from 'vue'
import Message from './Message.vue'

const messages = ref([
  { id: 1, text: 'Hola, te estoy escuchando 👀', isUser: false },
  { id: 2, text: 'Quiero tomar algunas notas', isUser: true }
])

const isRecording = ref(false)

const toggleRecording = async () => {
  if (!isRecording.value) {
    try {
      const stream = await navigator.mediaDevices.getUserMedia({ audio: true })
      isRecording.value = true
      // Aquí iría la lógica para procesar el audio
      console.log('Grabando...')
    } catch (error) {
      console.error('Error al acceder al micrófono:', error)
    }
  } else {
    isRecording.value = false
    // Aquí iría la lógica para detener la grabación
    console.log('Grabación detenida')
  }
}
</script>

<template>
  <div class="flex flex-col h-[85vh] bg-white shadow-lg rounded-lg border-4 border-gray-300">
    <div class="p-4 border-b-4 border-gray-300">
      <h2 class="text-xl font-bold text-gray-800">🎤 Whisper Listener</h2>
    </div>
    <div class="flex-1 overflow-y-auto p-6 space-y-4">
      <Message 
        v-for="message in messages" 
        :key="message.id"
        :text="message.text"
        :is-user="message.isUser"
      />
    </div>
    
    <div class="p-4 border-t-4 border-gray-300">
      <div class="flex justify-center">
        <button
          @click="toggleRecording"
          :class="[
            'p-4 rounded-full transition-all duration-200',
            isRecording 
              ? 'bg-red-500 hover:bg-red-600' 
              : 'bg-gray-800 hover:bg-gray-900'
          ]"
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
      </div>
    </div>
  </div>
</template> 