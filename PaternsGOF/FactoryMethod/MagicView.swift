class MagicView: View {
    private let type: String
    private let color: String
    private let text: String
    
    init(type: String, color: String, text: String) {
        self.type = type
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
        if type == "dialog" {
            let dialog = Dialog()
            dialog.set(title: text)
            return dialog
        } else if type == "label" {
            let label = Label()
            label.set(text: text)
            return label
        } else if type == "textfield" {
            let textField = TextField()
            textField.set(placeholder: text)
            return textField
        } else {
            return nil
        }
    }
}
