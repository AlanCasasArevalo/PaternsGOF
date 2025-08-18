final class TextProcessor {
    private var buffer = ""
    private let outputFormat: OutputFormat
    
    init(outputFormat: OutputFormat) {
        self.outputFormat = outputFormat
    }
    
    func append (items: [String]) {
        // Start
        if outputFormat == .html {
            buffer.append("<ul>\n")
        }
        
        // Middle
        if outputFormat == .markdown {
            items.forEach { item in
                buffer.append(" * \(item)\n")
            }
        } else {
            items.forEach { item in
                buffer.append("<li>\(item)</li>\n")
            }
        }
        
        // End
        if outputFormat == .html {
            buffer.append("</ul>\n")
        }
    }
    
    func clear () {
        buffer = ""
    }
    
    func print () -> String {
        buffer
    }
}
