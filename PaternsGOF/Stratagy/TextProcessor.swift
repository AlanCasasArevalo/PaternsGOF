final class TextProcessor {
    private var buffer = ""
    
    func append (items: [String]) {
        items.forEach { item in
            buffer.append(" * \(item)\n")
        }
    }
    
    func clear () {
        buffer = ""
    }
    
    func print () -> String {
        buffer
    }
}
