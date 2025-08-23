class OpenBlindCommand: Command {
    private let blind: BlindDriver
    
    init(blind: BlindDriver) {
        self.blind = blind
    }
    
    func execute() {
        blind.set(height: 100)
    }
}
