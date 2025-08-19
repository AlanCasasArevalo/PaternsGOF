class MagicViewFactory {
    func create(type: MagicViewType, color: String, text: String) -> MagicView? {
        switch type {
        case .dialog:
            DialogMagicView(text: text, color: color)
        case .label:
            LabelMagicView(text: text, color: color)
        case .textField:
            TextFieldMagicView(text: text, color: color)
        }
    }
}
