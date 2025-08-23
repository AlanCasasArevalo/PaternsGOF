class SetFanSpeedCommand: Command {
    let fan: FanDriver
    private var previousState: FanDriver.State = .off
    private var previousSpeed: FanDriver.Speed = .low
    
    init(fan: FanDriver) {
        self.fan = fan
    }
    
    func execute() {
        storePreviousFanState()
    }
    
    func storePreviousFanState() {
        previousState = fan.isOn() ? .on : .off
        previousSpeed = fan.getSPeed()
    }
    
    func undo() {
        if previousState == .on {
            fan.turnOn()
        } else {
            fan.turnOff()
        }
        fan.set(speed: previousSpeed)
    }
}
