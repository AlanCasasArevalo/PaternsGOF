protocol CEOProtocol {
    func greet() -> String
}

class CEO {
    let name: String
    let company: String
    
    private init(name: String, company: String) {
        self.name = name
        self.company = company
    }
    
    private static var instance: CEOProtocol!
    
    static func getInstance() -> CEOProtocol {
        if instance == nil {
            instance = CEO(name: "John", company: "Apple")
        }
        return instance
    }
}

extension CEO: CEOProtocol {
    func greet() -> String {
        "Hello, my name is \(name), I'm the Chief Executive Officer of \(company)!"
    }
}
