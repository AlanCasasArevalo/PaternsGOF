@testable import PaternsGOF

class TunerMock: Tuner {
    var isOn = false
    var isSetAm = false
    var isSetFm = false
    var frequency: Int?

    func on() {
        isOn = true
    }
    
    func off() {
        isOn = false
    }
    
    func setAm() {
        isSetAm = true
    }
    
    func setFm() {
        isSetFm = true
    }
    
    func set(frequency: Int) {
        self.frequency = frequency
    }
}
