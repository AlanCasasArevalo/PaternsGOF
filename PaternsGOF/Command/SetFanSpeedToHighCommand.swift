class SetFanSpeedToHighCommand: SetFanSpeedCommand {
    override func execute() {
        super.execute()
        fan.turnOn()
        fan.set(speed: .high)
    }
}
