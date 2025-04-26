// whisper-brain.js

// Almacena todos los mensajes transcritos por Whisper
const whisperBrain = {
    messages: [],

    // Agrega un mensaje al historial y guarda en localStorage
    addMessage(message) {
        if (typeof message === 'string') {
            this.messages.push(message ); 
            this.save();
        }
    },

    // Devuelve todos los mensajes concatenados
    getAllMessages() {
        return this.messages.join('\n');
    },

    // Limpia el historial de mensajes y localStorage
    clearMessages() {
        this.messages = [];
        this.save();
    },


    // Agrega un mensaje y actualiza el output
    addAndRender(message) {
        this.addMessage(message);
        this.renderFinalOutput();
    },

    // Guarda los mensajes en localStorage
    save() {
        localStorage.setItem('whisperBrainMessages', JSON.stringify(this.messages));
    },

    // Carga los mensajes desde localStorage
    load() {
        const data = localStorage.getItem('whisperBrainMessages');
        if (data) {
            this.messages = JSON.parse(data);
        } else {
            this.messages = [];
        }
    }
};

// Función para inicializar el brain y cargar mensajes guardados
function initWhisperBrain() {
    whisperBrain.load();
}

// Función para agregar un mensaje desde fuera
function whisperBrainAddMessage(message) {
    whisperBrain.addAndRender(message);
}

function whisperBrainClear() {
    whisperBrain.clearMessages();
}

window.whisperBrain = whisperBrain;
window.initWhisperBrain = initWhisperBrain;
window.whisperBrainAddMessage = whisperBrainAddMessage;
window.whisperBrainClear = whisperBrainClear;
