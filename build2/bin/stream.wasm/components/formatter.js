class TestFormatter {
    static format(text) {
        const lowerText = text.toLowerCase();
        
        // Helper function to clean text from keywords and capitalize first letter
        const cleanText = (text, shouldCapitalize = false) => {
            let cleaned = text
                .replace(/\b(1|one)\b/gi, '')
                .replace(/\b(2|two)\b/gi, '')
                .replace(/\b(3|three)\b/gi, '')
                .replace(/\b(bold|strong)\b/gi, '')
                .replace(/\b(list|bullet)\b/gi, '')
                .replace(/\b(link|url)\b/gi, '')
                .replace(/\b(quote|block)\b/gi, '')
                .replace(/\b(code|pre)\b/gi, '')
                .replace(/\s+/g, ' ')  // Reemplaza múltiples espacios por uno solo
                .trim();
            
            if (shouldCapitalize && cleaned.length > 0) {
                cleaned = cleaned.charAt(0).toUpperCase() + cleaned.slice(1);
            }
            
            return cleaned;
        };
        
        // Check for headings
        if (lowerText.includes('1') || lowerText.includes('one')) {
            const h1 = document.createElement('h1');
            h1.textContent = cleanText(text, true);
            h1.className = 'text-2xl font-bold text-gray-800 mb-3 mt-4 tracking-tight';
            return h1;
        }
        if (lowerText.includes('2') || lowerText.includes('two')) {
            const h2 = document.createElement('h2');
            h2.textContent = cleanText(text, true);
            h2.className = 'text-xl font-semibold text-gray-700 mb-2 mt-3';
            return h2;
        }
        if (lowerText.includes('3') || lowerText.includes('three')) {
            const h3 = document.createElement('h3');
            h3.textContent = cleanText(text, true);
            h3.className = 'text-lg font-medium text-gray-600 mb-2 mt-2';
            return h3;
        }
        
        // Check for other HTML elements
        if (lowerText.includes('bold') || lowerText.includes('strong')) {
            const strong = document.createElement('strong');
            strong.textContent = cleanText(text);
            strong.className = 'font-bold text-gray-800';
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
            li.textContent = cleanText(text);
            li.className = 'list-disc ml-5 text-gray-600 mb-1 text-sm';
            ul.appendChild(li);
            ul.className = 'mb-3';
            return ul;
        }
        if (lowerText.includes('link') || lowerText.includes('url')) {
            const a = document.createElement('a');
            a.href = '#';
            a.textContent = cleanText(text);
            a.className = 'text-blue-500 hover:text-blue-700 underline transition-colors duration-200 text-sm';
            return a;
        }
        if (lowerText.includes('quote') || lowerText.includes('block')) {
            const blockquote = document.createElement('blockquote');
            blockquote.textContent = cleanText(text);
            blockquote.className = 'border-l-2 border-gray-200 pl-3 italic text-gray-600 my-3 text-sm';
            return blockquote;
        }
        if (lowerText.includes('code') || lowerText.includes('pre')) {
            const pre = document.createElement('pre');
            pre.textContent = cleanText(text);
            pre.className = 'bg-gray-50 p-3 rounded-md font-mono text-xs text-gray-700 my-3 overflow-x-auto';
            return pre;
        }
        
        // Default to paragraph if no special formatting is found
        const p = document.createElement('p');
        p.textContent = text;
        p.className = 'text-gray-600 mb-3 leading-relaxed text-sm';
        return p;
    }
}

// Example usage:
// const element = TestFormatter.format("This is a test with one");
// document.body.appendChild(element); // Adds the element to the page
