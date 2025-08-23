protocol CleanerDriverAdapter {
    func getMode() -> Cleaner.Mode
    func getState() -> Cleaner.State
    func set(mode: Cleaner.Mode)
    func set(state: Cleaner.State)
}
