@testable import PaternsGOF

class PopcornPopperMock: PopcornPopper {
    var isOn: Bool = false
    var isPopped: Bool = false

    func on() {
        isOn = true
    }
    
    func off() {
        isOn = false
    }
    
    func pop() {
        isPopped = true
    }
}
