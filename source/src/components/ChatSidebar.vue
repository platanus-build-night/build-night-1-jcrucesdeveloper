<script setup>
import { ref } from 'vue'

const savedChats = ref([
  { id: 1, title: 'Notas de trabajo' },
  { id: 2, title: 'Ideas de proyecto' },
  { id: 3, title: 'Tareas pendientes' }
])

const selectedChat = ref(null)

const selectChat = (chat) => {
  selectedChat.value = chat
}
</script>

<template>
  <div class="h-screen bg-white border-r-4 border-gray-300 p-6">
    <div class="mb-8">
      <h1 class="text-2xl font-bold text-gray-800 mb-6">📝 Whisper Note Taker</h1>
      <button class="w-full bg-gray-800 hover:bg-gray-900 text-white py-3 px-4 rounded-lg transition-colors duration-200">
        ✨ Nueva nota
      </button>
    </div>
    
    <div class="space-y-3">
      <div v-for="chat in savedChats" 
           :key="chat.id"
           @click="selectChat(chat)"
           :class="[
             'p-4 rounded-lg cursor-pointer transition-colors duration-200',
             selectedChat?.id === chat.id 
               ? 'bg-gray-100 border border-gray-200' 
               : 'hover:bg-gray-50'
           ]">
        <div class="text-gray-800 font-medium">
          📌 {{ chat.title }}
        </div>
      </div>
    </div>
  </div>
</template> 