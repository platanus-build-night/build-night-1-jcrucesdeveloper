<script setup>
defineProps({
  text: {
    type: String,
    required: true
  },
  isUser: {
    type: Boolean,
    default: false
  }
})
</script>

<template>
  <div :class="['flex', isUser ? 'justify-end' : 'justify-start']">
    <div 
      :class="[
        'max-w-[70%] p-3 rounded-lg',
        isUser 
          ? 'bg-blue-600 text-white' 
          : 'bg-gray-200 text-gray-800'
      ]"
    >
      {{ text }}
    </div>
  </div>
</template> 