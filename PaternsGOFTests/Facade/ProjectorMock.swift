@testable import PaternsGOF

class ProjectorMock: Projector {
    var isOn: Bool = false
    var isTVMode: Bool = false
    var isWideScreenMode: Bool = false

    func on() {
        isOn = true
    }
    
    func off() {
        isOn = false
    }
    
    func tvMode() {
        isTVMode = true
    }
    
    func wideScreenMode() {
        isWideScreenMode = true
    }
}
