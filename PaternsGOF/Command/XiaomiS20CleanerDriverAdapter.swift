class XiaomiS20CleanerDriverAdapter: CleanerDriverAdapter {
    private let adaptee: XiaomiS20CleanerDriver
    private let modeMapper: XiaomiS20CleanerDriverModeMapper
    private let stateMapper: XiaomiS20CleanerDriverStateMapper
    
    init(adaptee: XiaomiS20CleanerDriver, modeMapper: XiaomiS20CleanerDriverModeMapper, stateMapper: XiaomiS20CleanerDriverStateMapper) {
        self.adaptee = adaptee
        self.modeMapper = modeMapper
        self.stateMapper = stateMapper
    }
    
    func getMode() -> Cleaner.Mode {
        let mode = adaptee.getMode()
        return modeMapper.map(mode)
    }
    
    func getState() -> Cleaner.State {
        let state = adaptee.getState()
        return stateMapper.map(state)
    }
    
    func set(mode: Cleaner.Mode) {
        adaptee.set(mode: modeMapper.invert(mode))
    }
    
    func set(state: Cleaner.State) {
        adaptee.set(state: stateMapper.invert(state))
    }
}
