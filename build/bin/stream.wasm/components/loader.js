// loader.js
async function loadComponent(componentName) {
    try {
        const response = await fetch(`components/${componentName}.html`);
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        const html = await response.text();
        return html;
    } catch (error) {
        console.error(`Error loading component ${componentName}:`, error);
        return '';
    }
}

async function loadComponents() {
    console.log('Loading components...');
    const components = ['sidebar', 'chat-area', 'debug-output', 'final-output'];
    
    for (const component of components) {
        console.log(`Loading ${component}...`);
        const html = await loadComponent(component);
        const container = document.getElementById(`${component}-container`);
        if (container) {
            container.innerHTML = html;
            console.log(`${component} loaded successfully`);
        } else {
            console.error(`Container for ${component} not found`);
        }
    }
}

// Cargar componentes cuando el DOM esté listo
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', loadComponents);
} else {
    loadComponents();
} 