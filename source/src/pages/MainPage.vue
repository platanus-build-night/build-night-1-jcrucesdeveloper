<script setup>
import ChatSidebar from '../components/ChatSidebar.vue'
import ChatArea from '../components/ChatArea.vue'
import FinalTextViewer from '../components/FinalTextViewer.vue'
</script>

<template>
  <div class="flex h-screen bg-white">
    <div class="w-1/4 border-r-4 border-gray-300">
      <ChatSidebar />
    </div>
    <div class="w-3/4 flex justify-center items-center gap-6 p-6">
      <div class="w-full max-w-2xl border-r-4 border-gray-300 pr-6">
        <ChatArea />
      </div>
      <div class="w-full max-w-2xl">
        <FinalTextViewer />
      </div>
    </div>
  </div>
</template>

<style>
body {
  margin: 0;
  padding: 0;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}
</style>
