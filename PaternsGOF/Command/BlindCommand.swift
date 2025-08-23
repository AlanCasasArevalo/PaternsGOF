class BlindCommand: Command {
    let blind: BlindDriver
    private var previousHeight: Int = 0
    
    init(blind: BlindDriver) {
        self.blind = blind
    }
    
    func execute() {
        storePreviousState()
    }
    
    func undo() {
        blind.set(height: previousHeight)
    }
    
    private func storePreviousState() {
        previousHeight = self.blind.getHeightLevel()
    }
}
