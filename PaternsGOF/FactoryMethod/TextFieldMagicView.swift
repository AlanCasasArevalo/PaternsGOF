class TextFieldMagicView: MagicView {
    let text: String
    let color: String
    
    init(text: String, color: String) {
        self.text = text
        self.color = color
        super.init(color: color, text: text)
    }
    
    override func createView() -> View? {
        let view = TextField()
        view.set(placeholder: text)
        return view
    }
}
