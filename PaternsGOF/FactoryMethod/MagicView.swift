class MagicView: View {
    private let color: String
    private let text: String
    
    init(color: String, text: String) {
        self.color = color
        self.text = text
    }
    
    override func load() {
        if let view = createView() {
            add(subView: view)
            view.set(color: color)
            view.load()
        }
    }
    
    func createView() -> View? {
        return nil
    }
}
