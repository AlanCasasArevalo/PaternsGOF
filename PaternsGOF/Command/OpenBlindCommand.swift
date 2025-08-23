class OpenBlindCommand: BlindCommand {
    override func execute() {
        super.execute()
        blind.set(height: 100)
    }
}
