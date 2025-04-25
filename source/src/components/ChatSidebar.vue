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
  <div class="w-64 h-screen bg-gray-800 text-white p-4">
    <div class="mb-4">
      <button class="w-full bg-blue-600 hover:bg-blue-700 text-white py-2 px-4 rounded-lg">
        Nueva nota
      </button>
    </div>
    
    <div class="space-y-2">
      <div v-for="chat in savedChats" 
           :key="chat.id"
           @click="selectChat(chat)"
           :class="['p-3 rounded-lg cursor-pointer hover:bg-gray-700', 
                   { 'bg-gray-700': selectedChat?.id === chat.id }]">
        {{ chat.title }}
      </div>
    </div>
  </div>
</template> 