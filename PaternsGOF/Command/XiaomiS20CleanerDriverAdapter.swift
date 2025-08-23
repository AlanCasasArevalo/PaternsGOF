class XiaomiS20CleanerDriverAdapter: CleanerDriverAdapter {
    private let adaptee: XiaomiS20CleanerDriver
    
    init(adaptee: XiaomiS20CleanerDriver) {
        self.adaptee = adaptee
    }
    
    func getMode() -> Cleaner.Mode {
        switch adaptee.getMode() {
        case .vacuum:
            return .vacuum
        case .mop:
            return .mop
        case .all:
            return .all
        }
    }
    
    func getState() -> Cleaner.State {
        switch adaptee.getState() {
        case .off:
            return .off
        case .charging:
            return .charging
        case .idle:
            return .idle
        case .cleaning:
            return .charging
        }
    }
    
    func set(mode: Cleaner.Mode) {
        let adapteeMode: XiaomiS20CleanerDriver.Mode
        switch mode {
        case .vacuum:
            adapteeMode = .vacuum
        case .mop:
            adapteeMode = .mop
        case .all:
            adapteeMode = .all
        }
        adaptee.set(mode: adapteeMode)
    }
    
    func set(state: Cleaner.State) {
        switch state {
        case .off:
            adaptee.set(state: .off)
        case .charging:
            adaptee.set(state: .charging)
        case .idle:
            adaptee.set(state: .idle)
        case .cleaning:
            adaptee.set(state: .cleaning)
        }        
    }
}
