var Module = {
    preRun: [],
    postRun: [],
    print: function(text) {
        if (arguments.length > 1) text = Array.prototype.slice.call(arguments).join(' ');
        console.log(text);
    },
    printErr: function(text) {
        if (arguments.length > 1) text = Array.prototype.slice.call(arguments).join(' ');
        console.error(text);
    },
    canvas: (function() {
        var canvas = document.getElementById('canvas');
        return canvas;
    })(),
    setStatus: function(text) {
        if (!Module.setStatus.last) Module.setStatus.last = { time: Date.now(), text: '' };
        if (text === Module.setStatus.last.text) return;
        var m = text.match(/([^(]+)\((\d+(\.\d+)?)\/(\d+)\)/);
        var now = Date.now();
        if (m && now - Module.setStatus.last.time < 30) return; // throttle progress updates
        Module.setStatus.last.time = now;
        Module.setStatus.last.text = text;
        if (m) {
            text = m[1];
            progressElement.value = parseInt(m[2])*100;
            progressElement.max = parseInt(m[4])*100;
            progressElement.hidden = false;
        } else {
            progressElement.value = null;
            progressElement.max = null;
            progressElement.hidden = true;
        }
        statusElement.innerHTML = text;
    },
    totalDependencies: 0,
    monitorRunDependencies: function(left) {
        this.totalDependencies = Math.max(this.totalDependencies, left);
        Module.setStatus(left ? 'Preparing... (' + (this.totalDependencies-left) + '/' + this.totalDependencies + ')' : 'All downloads complete.');
    },
    onRuntimeInitialized: function() {
        // Configure Whisper parameters for better performance and lower CPU usage
        Module.set_n_threads(2);  // Reduced from 4 to 2 threads to lower CPU usage
        Module.set_step_ms(1000);  // Increased from 500ms to 1000ms
        Module.set_length_ms(5000);  // Increased from 3000ms to 5000ms for more efficient processing
        Module.set_keep_ms(2000);  // Adjusted keep window
        Module.set_vad_thold(0.5);  // Increased threshold to reduce processing of non-speech
        Module.set_freq_thold(200.0);  // Increased threshold for better CPU efficiency
    }
}; 