class TurnCleanerOffCommand: CleanHomeCommand {
    override func execute() {
        super.execute()
        self.cleaner.set(state: .off)
    }
}
