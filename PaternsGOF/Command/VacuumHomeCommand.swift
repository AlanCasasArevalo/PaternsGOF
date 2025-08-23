class VacuumHomeCommand: Command {
    private let cleaner: XiaomiS20CleanerDriver
    
    init(cleaner: XiaomiS20CleanerDriver) {
        self.cleaner = cleaner
    }
    
    func execute() {
        cleaner.set(mode: .vacuum)
        cleaner.set(state: .cleaning)
    }
}
