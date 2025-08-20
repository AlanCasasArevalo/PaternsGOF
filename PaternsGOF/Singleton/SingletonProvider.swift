protocol SingletonProvidable {
    func provideCEO() -> CEOProtocol
}

class SingletonProvider: SingletonProvidable {
    func provideCEO() -> any CEOProtocol {
        CEO.getInstance()
    }
}
