protocol FormatStrategy {
    func start(_ buffer: inout String)
    func add(item: String, to buffer: inout String)
    func end(_ buffer: inout String)
}
