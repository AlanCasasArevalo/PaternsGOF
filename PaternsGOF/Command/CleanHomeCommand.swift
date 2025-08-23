class CleanHomeCommand: Command {
    let cleaner: XiaomiS20CleanerDriver
    private var previousMode: XiaomiS20CleanerDriver.Mode = .all
    private var previousState: XiaomiS20CleanerDriver.State = .off
    
    init(cleaner: XiaomiS20CleanerDriver) {
        self.cleaner = cleaner
    }
    
    func execute() {
        storePreviousState()
    }
    
    func undo() {
        self.cleaner.set(mode: self.previousMode)
        self.cleaner.set(state: self.previousState)
    }
    
    private func storePreviousState() {
        self.previousMode = self.cleaner.getMode()
        self.previousState = self.cleaner.getState()
    }
}
