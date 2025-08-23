class TurnLampOnCommand: Command {
    private let lamp: LampDriver
    
    init(lamp: LampDriver) {
        self.lamp = lamp
    }
    
    func execute() {
        lamp.turnOn()
    }
}
