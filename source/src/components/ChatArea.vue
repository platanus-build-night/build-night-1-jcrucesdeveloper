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
  <div class="flex flex-col h-[85vh] bg-white shadow-md rounded-lg">
    <div class="flex-1 overflow-y-auto p-6 space-y-4">
      <Message 
        v-for="message in messages" 
        :key="message.id"
        :text="message.text"
        :is-user="message.isUser"
      />
    </div>
    
    <div class="p-4 border-t border-gray-200">
      <form @submit.prevent="sendMessage" class="flex gap-2 max-w-xl mx-auto">
        <input
          v-model="newMessage"
          type="text"
          placeholder="Escribe tu mensaje..."
          class="flex-1 p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-gray-500 focus:border-transparent"
        />
        <button
          type="submit"
          class="bg-gray-800 hover:bg-gray-900 text-white py-2 px-6 rounded-lg transition-colors duration-200"
        >
          Enviar
        </button>
      </form>
    </div>
  </div>
</template> 