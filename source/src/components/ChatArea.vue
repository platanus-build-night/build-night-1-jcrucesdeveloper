<script setup>
import { ref } from 'vue'
import Message from './Message.vue'

const messages = ref([
  { id: 1, text: 'Hola, ¿en qué puedo ayudarte?', isUser: false },
  { id: 2, text: 'Quiero tomar algunas notas', isUser: true }
])

const newMessage = ref('')

const sendMessage = () => {
  if (newMessage.value.trim()) {
    messages.value.push({
      id: messages.value.length + 1,
      text: newMessage.value,
      isUser: true
    })
    newMessage.value = ''
  }
}
</script>

<template>
  <div class="flex flex-col h-screen">
    <div class="flex-1 overflow-y-auto p-4 space-y-4">
      <Message 
        v-for="message in messages" 
        :key="message.id"
        :text="message.text"
        :is-user="message.isUser"
      />
    </div>
    
    <div class="p-4 border-t">
      <form @submit.prevent="sendMessage" class="flex gap-2">
        <input
          v-model="newMessage"
          type="text"
          placeholder="Escribe tu mensaje..."
          class="flex-1 p-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
        />
        <button
          type="submit"
          class="bg-blue-600 hover:bg-blue-700 text-white py-2 px-4 rounded-lg"
        >
          Enviar
        </button>
      </form>
    </div>
  </div>
</template> 