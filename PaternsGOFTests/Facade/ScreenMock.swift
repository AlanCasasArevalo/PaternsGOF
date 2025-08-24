@testable import PaternsGOF

class ScreenMock: Screen {
    var isUp: Bool = false
    var isDown: Bool = false
    
    func up() {
        isDown = false
        isUp = true
    }
    
    func down() {
        isDown = true
        isUp = false
    }
}
