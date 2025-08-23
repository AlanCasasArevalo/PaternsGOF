class XiaomiS20CleanerDriverStateMapper {
    func map(_ state: XiaomiS20CleanerDriver.State) -> Cleaner.State {
        switch state {
        case .off:
            return .off
        case .charging:
            return .charging
        case .idle:
            return .idle
        case .cleaning:
            return .cleaning
        }
    }
    
    func invert(_ state: Cleaner.State) -> XiaomiS20CleanerDriver.State {
        switch state {
        case .off:
            return .off
        case .charging:
            return .charging
        case .idle:
            return .idle
        case .cleaning:
            return .cleaning
        }
    }
}
