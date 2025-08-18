final class HtmlFormatStrategy {
    
}

extension HtmlFormatStrategy: FormatStrategy {
    func start(_ buffer: inout String) {
        buffer.append("<ul>\n")
    }
    
    func add(item: String, to buffer: inout String) {
        buffer.append("<li>\(item)</li>\n")
    }
    
    func end(_ buffer: inout String) {
        buffer.append("</ul>\n")
    }
}
