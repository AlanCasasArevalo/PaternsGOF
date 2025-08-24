@testable import PaternsGOF

class AmplifierMock: Amplifier {
    var isOn = false
    var isSetCd = false
    var isSetDvd = false
    var isSetStereoSound = false
    var isSurrondSound = false
    var isSetTuner = false
    var volume: Int = 0
    
    func on() {
        isOn = true
    }
    
    func off() {
        isOn = false
    }
    
    func setCd() {
        isSetCd = true
    }
    
    func setDvd() {
        isSetDvd = true
    }
    
    func setStereoSound() {
        isSetStereoSound = true
    }
    
    func setSurroundSound() {
        isSurrondSound = true
    }
    
    func setTuner() {
        isSetTuner = true
    }
    
    func set(volume: Int) {
        self.volume = volume
    }
}
