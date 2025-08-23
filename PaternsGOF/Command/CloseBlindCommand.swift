class CloseBlindCommand: BlindCommand {
    override func execute() {
        super.execute()
        blind.set(height: 0)
    }
}
