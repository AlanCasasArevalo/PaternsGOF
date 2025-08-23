class XiaomiS20CleanerDriverModeMapper {
    func map(_ mode: XiaomiS20CleanerDriver.Mode) -> Cleaner.Mode {
        switch mode {
        case .all:
            return .all
        case .vacuum:
            return .vacuum
        case .mop:
            return .mop
        }
    }
    
    func invert(_ mode: Cleaner.Mode) -> XiaomiS20CleanerDriver.Mode {
        switch mode {
        case .all:
            return .all
        case .vacuum:
            return .vacuum
        case .mop:
            return .mop
        }
    }
}
