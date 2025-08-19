class DialogMagicView: MagicView {
    let text: String
    let color: String
    
    init(text: String, color: String) {
        self.text = text
        self.color = color
        super.init(color: color, text: text)
    }
    
    override func createView() -> View? {
        let dialog = Dialog()
        dialog.set(title: text)
        return dialog
    }
}
