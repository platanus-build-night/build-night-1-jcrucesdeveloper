class TestFormatter {
    static format(text) {
        const lowerText = text.toLowerCase();
        
        // Check for headings
        if (lowerText.includes('1') || lowerText.includes('one')) {
            const h1 = document.createElement('h1');
            h1.textContent = text;
            h1.className = 'text-4xl font-bold text-gray-900 mb-4 mt-6 tracking-tight';
            return h1;
        }
        if (lowerText.includes('2') || lowerText.includes('two')) {
            const h2 = document.createElement('h2');
            h2.textContent = text;
            h2.className = 'text-3xl font-semibold text-gray-800 mb-3 mt-5';
            return h2;
        }
        if (lowerText.includes('3') || lowerText.includes('three')) {
            const h3 = document.createElement('h3');
            h3.textContent = text;
            h3.className = 'text-2xl font-medium text-gray-700 mb-2 mt-4';
            return h3;
        }
        
        // Check for other HTML elements
        if (lowerText.includes('bold') || lowerText.includes('strong')) {
            const strong = document.createElement('strong');
            strong.textContent = text;
            strong.className = 'font-bold text-gray-900';
            return strong;
        }
        // if (lowerText.includes('italic') || lowerText.includes('em')) {
        //     const em = document.createElement('em');
        //     em.textContent = text;
        //     return em;
        // }
        if (lowerText.includes('list') || lowerText.includes('bullet')) {
            const ul = document.createElement('ul');
            const li = document.createElement('li');
            li.textContent = text;
            li.className = 'list-disc ml-6 text-gray-700 mb-2';
            ul.appendChild(li);
            ul.className = 'mb-4';
            return ul;
        }
        if (lowerText.includes('link') || lowerText.includes('url')) {
            const a = document.createElement('a');
            a.href = '#';
            a.textContent = text;
            a.className = 'text-blue-600 hover:text-blue-800 underline transition-colors duration-200';
            return a;
        }
        if (lowerText.includes('quote') || lowerText.includes('block')) {
            const blockquote = document.createElement('blockquote');
            blockquote.textContent = text;
            blockquote.className = 'border-l-4 border-gray-300 pl-4 italic text-gray-600 my-4';
            return blockquote;
        }
        if (lowerText.includes('code') || lowerText.includes('pre')) {
            const pre = document.createElement('pre');
            pre.textContent = text;
            pre.className = 'bg-gray-100 p-4 rounded-md font-mono text-sm text-gray-800 my-4 overflow-x-auto';
            return pre;
        }
        
        // Default to paragraph if no special formatting is found
        const p = document.createElement('p');
        p.textContent = text;
        p.className = 'text-gray-700 mb-4 leading-relaxed';
        return p;
    }
}

// Example usage:
// const element = TestFormatter.format("This is a test with one");
// document.body.appendChild(element); // Adds the element to the page
