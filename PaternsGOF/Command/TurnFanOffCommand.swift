class TurnFanOffCommand: Command {
    private let fan: FanDriver
    
    init(fan: FanDriver) {
        self.fan = fan
    }
    
    func execute() {
        fan.turnOff()
    }
}
