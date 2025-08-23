class SetFanSpeedToHighCommand: Command {
    private let fan: FanDriver
    
    init(fan: FanDriver) {
        self.fan = fan
    }
    
    func execute() {
        fan.turnOn()
        fan.set(speed: .high)
    }
}
