final class TextProcessor {
    private var buffer = ""
    private let formatStrategy: FormatStrategy
    
    init(outputFormat: OutputFormat) {
        switch outputFormat {
        case .markdown:
            formatStrategy = MarkdownFormatStrategy()
        case .html:
            formatStrategy = HtmlFormatStrategy()
        }
    }
    
    func append (items: [String]) {
        // Start
        formatStrategy.start(&buffer)
        
        // Middle
        items.forEach {
            formatStrategy.add(item: $0, to: &buffer)
        }
        
        // End
        formatStrategy.end(&buffer)
    }
    
    func clear () {
        buffer = ""
    }
    
    func print () -> String {
        buffer
    }
}
