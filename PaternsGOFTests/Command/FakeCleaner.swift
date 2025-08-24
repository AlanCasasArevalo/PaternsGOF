@testable import PaternsGOF

class FakeCleaner: CleanerDriverAdapter {
    var mode: Cleaner.Mode
    var state: Cleaner.State
    
    init(mode: Cleaner.Mode, state: Cleaner.State) {
        self.mode = mode
        self.state = state
    }
    
    func getMode() -> Cleaner.Mode {
        mode
    }
    
    func getState() -> Cleaner.State {
        state
    }
    
    func set(mode: Cleaner.Mode) {
        self.mode = mode
    }
    
    func set(state: Cleaner.State) {
        self.state = state
    }
}
