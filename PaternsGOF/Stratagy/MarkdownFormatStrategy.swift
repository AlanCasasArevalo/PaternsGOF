final class MarkdownFormatStrategy {
    
}

extension MarkdownFormatStrategy: FormatStrategy {
    func start(_ buffer: inout String) {}
    
    func add(item: String, to buffer: inout String) {
        buffer.append(" * \(item)\n")
    }
    
    func end(_ buffer: inout String) {}
}
