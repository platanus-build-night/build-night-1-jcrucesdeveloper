import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import { resolve } from 'path'

export default defineConfig({
  plugins: [vue()],
  resolve: {
    alias: {
      '@': resolve(__dirname, 'source/src')
    }
  },
  server: {
    headers: {
      'Cross-Origin-Opener-Policy': 'same-origin',
      'Cross-Origin-Embedder-Policy': 'require-corp',
      'Cross-Origin-Resource-Policy': 'cross-origin'
    },
    proxy: {
      '/whisper.cpp': {
        target: 'http://localhost:3000',
        changeOrigin: true
      }
    }
  },
  optimizeDeps: {
    exclude: ['@whisper/wasm']
  }
}) 