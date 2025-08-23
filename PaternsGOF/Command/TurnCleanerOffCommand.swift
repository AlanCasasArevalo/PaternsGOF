class TurnCleanerOffCommand: Command {
    private let cleaner: XiaomiS20CleanerDriver
    
    init(cleaner: XiaomiS20CleanerDriver) {
        self.cleaner = cleaner
    }
    
    func execute() {
        self.cleaner.set(state: .off)
    }
}
