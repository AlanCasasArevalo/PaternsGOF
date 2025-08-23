class CleanHomeCommand: Command {
    let cleaner: CleanerDriverAdapter
    private var previousMode: Cleaner.Mode = .all
    private var previousState: Cleaner.State = .off
    
    init(cleaner: CleanerDriverAdapter) {
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
