<script setup>
import ChatSidebar from '../components/ChatSidebar.vue'
import ChatArea from '../components/ChatArea.vue'
</script>

<template>
  <div class="flex h-screen">
    <ChatSidebar />
    <ChatArea />
  </div>
</template>

<style>
body {
  margin: 0;
  padding: 0;
}
</style>
