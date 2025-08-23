class VacuumHomeCommand: CleanHomeCommand {
    override func execute() {
        super.execute()
        cleaner.set(mode: .vacuum)
        cleaner.set(state: .cleaning)
    }
}
