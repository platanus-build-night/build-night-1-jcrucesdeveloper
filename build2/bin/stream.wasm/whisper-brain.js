// whisper-brain.js

// Almacena todos los mensajes transcritos por Whisper
const whisperBrain = {
    messages: [],

    // Agrega un mensaje al historial y guarda en localStorage
    addMessage(message) {
        if (typeof message === 'string' && message.trim().length > 0) {
            this.messages.push(message);
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

    // Renderiza los mensajes en el Final Output
    renderFinalOutput() {
        const outputDiv = document.getElementById('final-output-content');
        if (outputDiv) {
            outputDiv.textContent = this.getAllMessages();
        }
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
        this.renderFinalOutput();
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

// Función para limpiar el output
function whisperBrainClear() {
    whisperBrain.clearMessages();
    whisperBrain.renderFinalOutput();
}

// Exportar funciones globalmente si se requiere
window.whisperBrain = whisperBrain;
window.initWhisperBrain = initWhisperBrain;
window.whisperBrainAddMessage = whisperBrainAddMessage;
window.whisperBrainClear = whisperBrainClear;

// Sincroniza el final output con whisperBrain cada 50ms
typeof window !== 'undefined' && (function() {
    let lastOutput = '';
    function syncFinalOutput() {
        const current = whisperBrain.getAllMessages();
        if (current !== lastOutput) {
            const outputDiv = document.getElementById('final-output-content');
            if (outputDiv) {
                outputDiv.textContent = current;
            }
            lastOutput = current;
        }
    }
    window.startFinalOutputSync = function() {
        setInterval(syncFinalOutput, 50);
    };
})(); 