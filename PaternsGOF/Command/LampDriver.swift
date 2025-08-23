final class LampDriver {
    enum State {
        case on
        case off
    }
    
    private var state: State
    
    init(state: State = .off ) {
        self.state = state
    }

    func isOn() -> Bool { self.state == .on }
    func turnOn() { state = .on }
    func turnOff() { state = .off }
}
