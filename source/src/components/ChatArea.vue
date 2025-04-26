<script setup>
import { ref } from 'vue'
import Message from './Message.vue'
import AudioListener from './AudioListener.vue'

const messages = ref([
  { id: 1, text: 'Hola, te estoy escuchando 👀', isUser: false },
  { id: 2, text: 'Quiero tomar algunas notas', isUser: true }
])
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
      <AudioListener />
    </div>
  </div>
</template> 