class MopFloorHomeCommand: CleanHomeCommand {
    override func execute() {
        super.execute()
        cleaner.set(mode: .mop)
        cleaner.set(state: .cleaning)
    }
}
