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
        'max-w-[70%] p-4 rounded-lg shadow-sm',
        isUser 
          ? 'bg-gray-800 text-white rounded-br-none' 
          : 'bg-gray-50 text-gray-800 rounded-bl-none border border-gray-200'
      ]"
    >
      <div class="text-sm leading-relaxed">
        {{ text }}
      </div>
    </div>
  </div>
</template> 