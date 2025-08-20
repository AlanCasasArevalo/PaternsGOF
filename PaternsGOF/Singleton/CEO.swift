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
    
    private static var instance: CEOProtocol = CEO(name: "John", company: "Apple")
    
    static func getInstance() -> CEOProtocol { instance }
}

extension CEO: CEOProtocol {
    func greet() -> String {
        "Hello, my name is \(name), I'm the Chief Executive Officer of \(company)!"
    }
}
