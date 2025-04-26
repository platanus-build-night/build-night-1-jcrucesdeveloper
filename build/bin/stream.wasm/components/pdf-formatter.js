class PDFFormatter {
    static initializePDF(pdfDoc) {
        // Add epic title with text-based microphone symbol
        pdfDoc.setFontSize(24);
        pdfDoc.setFont(undefined, 'bold');
        pdfDoc.text('Whisper Transcription', 10, 20);
        
        // Add a separator line
        pdfDoc.setDrawColor(200, 200, 200);
        pdfDoc.line(10, 28, 200, 28);
        
        // Reset font for content
        pdfDoc.setFontSize(12);
        pdfDoc.setFont(undefined, 'normal');
        
        return 35; // Return initial Y position for content
    }

    static format(text, pdfDoc, yPosition) {
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
                .replace(/\s+/g, ' ')
                .trim();
            
            if (shouldCapitalize && cleaned.length > 0) {
                cleaned = cleaned.charAt(0).toUpperCase() + cleaned.slice(1);
            }
            
            return cleaned;
        };

        // Check for headings
        if (lowerText.includes('1') || lowerText.includes('one')) {
            pdfDoc.setFontSize(24);
            pdfDoc.text(cleanText(text, true), 10, yPosition);
            return yPosition + 15;
        }
        if (lowerText.includes('2') || lowerText.includes('two')) {
            pdfDoc.setFontSize(20);
            pdfDoc.text(cleanText(text, true), 10, yPosition);
            return yPosition + 12;
        }
        if (lowerText.includes('3') || lowerText.includes('three')) {
            pdfDoc.setFontSize(16);
            pdfDoc.text(cleanText(text, true), 10, yPosition);
            return yPosition + 10;
        }
        
        // Check for other elements
        if (lowerText.includes('bold') || lowerText.includes('strong')) {
            pdfDoc.setFontSize(12);
            pdfDoc.setFont(undefined, 'bold');
            pdfDoc.text(cleanText(text), 10, yPosition);
            pdfDoc.setFont(undefined, 'normal');
            return yPosition + 8;
        }
        if (lowerText.includes('list') || lowerText.includes('bullet')) {
            pdfDoc.setFontSize(12);
            pdfDoc.text('• ' + cleanText(text), 10, yPosition);
            return yPosition + 8;
        }
        if (lowerText.includes('quote') || lowerText.includes('block')) {
            pdfDoc.setFontSize(12);
            pdfDoc.setFont(undefined, 'italic');
            pdfDoc.text('"' + cleanText(text) + '"', 15, yPosition);
            pdfDoc.setFont(undefined, 'normal');
            return yPosition + 8;
        }
        if (lowerText.includes('code') || lowerText.includes('pre')) {
            pdfDoc.setFontSize(10);
            pdfDoc.setFont('courier');
            pdfDoc.text(cleanText(text), 10, yPosition);
            pdfDoc.setFont(undefined);
            return yPosition + 8;
        }
        
        // Default to normal text
        pdfDoc.setFontSize(12);
        pdfDoc.text(text, 10, yPosition);
        return yPosition + 8;
    }
} 