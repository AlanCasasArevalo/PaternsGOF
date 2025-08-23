final class XiaomiS20CleanerDriver {
    enum Mode {
        case vacuum, mop, all
    }
    enum State {
        case off, charging, idle, cleaning
    }
    
    private var mode: Mode
    private var state: State
    
    init(mode: Mode = .vacuum, state: State = .off) {
        self.mode = mode
        self.state = state
    }
    
    func getMode() -> Mode { mode }
    func getState() -> State { state }
    func set(mode: Mode) { self.mode = mode }
    func set(state: State) { self.state = state}
}
