import Foundation

class SomeClass {
    var name : String {
        didSet {
            print("Name changed from \(oldValue) to \(name)")
        }
        willSet {
            print("Name will change from \(name) to \(newValue)")
        }
    }
    
    init(name: String) {
        self.name = name
    }
}
