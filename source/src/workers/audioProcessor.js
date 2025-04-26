importScripts('/wasm/helpers.js')

let whisper = null

// Cargar el modelo y el WASM
async function loadModel() {
  try {
    // Cargar el modelo
    const modelResponse = await fetch('/models/ggml-base.en.bin')
    const modelBuffer = await modelResponse.arrayBuffer()
    
    // Cargar el WASM
    const wasmResponse = await fetch('/wasm/stream.js')
    const wasmBuffer = await wasmResponse.arrayBuffer()
    
    // Inicializar Whisper
    whisper = await Module({
      wasmBinary: wasmBuffer,
      onRuntimeInitialized: () => {
        console.log('Whisper WASM inicializado')
      }
    })
    
    // Cargar el modelo
    whisper.loadModel(modelBuffer)
    
    return true
  } catch (error) {
    console.error('Error al cargar el modelo:', error)
    return false
  }
}

// Procesar audio
async function processAudio(audioData) {
  if (!whisper) {
    throw new Error('Whisper no está inicializado')
  }
  
  try {
    // Procesar el audio
    const result = whisper.processAudio(audioData)
    return result
  } catch (error) {
    console.error('Error al procesar audio:', error)
    throw error
  }
}

// Inicializar al cargar el worker
loadModel().then(() => {
  self.postMessage({ status: 'ready' })
})

// Manejador de mensajes
self.onmessage = async (e) => {
  const { audioData } = e.data
  
  try {
    if (!whisper) {
      throw new Error('Whisper no está inicializado')
    }
    
    const result = await processAudio(audioData)
    self.postMessage({
      status: 'success',
      text: result
    })
  } catch (error) {
    self.postMessage({
      status: 'error',
      error: error.message
    })
  }
} 