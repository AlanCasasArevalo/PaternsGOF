class LabelMagicView: MagicView {
    let text: String
    let color: String
    
    init(text: String, color: String) {
        self.text = text
        self.color = color
        super.init(color: color, text: text)
    }
    
    override func createView() -> View? {
        let view = Label()
        view.set(text: text)
        return view
    }
}
