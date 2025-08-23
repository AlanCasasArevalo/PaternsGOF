class MopFloorHomeCommand: Command {
    private let cleaner: XiaomiS20CleanerDriver
    
    init(cleaner: XiaomiS20CleanerDriver) {
        self.cleaner = cleaner
    }
    
    func execute() {
        cleaner.set(mode: .mop)
        cleaner.set(state: .cleaning)
    }
}
