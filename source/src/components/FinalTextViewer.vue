<script setup>
import { ref } from 'vue'

const finalText = ref('Aquí se mostrará el texto final de la conversación...')
</script>

<template>
  <div class="h-[85vh] bg-white shadow-lg rounded-lg p-6 border-4 border-gray-300">
    <h2 class="text-xl font-bold text-gray-800 mb-4">Texto Final</h2>
    <div class="h-[calc(100%-3rem)] overflow-y-auto">
      <div class="text-gray-700 whitespace-pre-wrap">
        {{ finalText }}
      </div>
    </div>
  </div>
</template> 