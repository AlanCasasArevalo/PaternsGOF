final class FanDriver {
    enum Speed {
        case low
        case medium
        case high
    }
    
    enum State {
        case on
        case off
    }
    
    private var speed: Speed
    private var state: State
    
    init(speed: Speed = .low, state: State = .off) {
        self.speed = speed
        self.state = state
    }
    
    func getSPeed() -> Speed { speed }
    func set(speed: Speed) { self.speed = speed }
    func isOn() -> Bool { state == .on }
    func turnOn() { state = .on}
    func turnOff() { state = .off}
}
