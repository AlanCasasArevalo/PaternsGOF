class StaticSingletonExample {
    static var instance = StaticSingletonExample()
    init() {}
    static func sharedInstance() -> StaticSingletonExample { instance }
    
    private var someValue = 0
    
    func increment() {
        someValue += 1
    }
    
    func getValue() -> Int {
        someValue
    }
    
    func getDescription() -> String {
        if someValue % 2 == 0 {
            return "even"
        } else {
            return "odd"
        }
    }
}
