@testable import PaternsGOF

class CdPlayerMock: CdPlayer {
    var isOn: Bool = false
    var isEject: Bool = false
    var isPlay: Bool = false
    var isStop: Bool = false


    func on() {
        isOn = true
    }
    
    func off() {
        isOn = false
    }
    
    func eject() {
        isEject = true
    }
    
    func pause() {
        isPlay = false
    }
    
    func play() {
        isPlay = true
    }
    
    func stop() {
        isPlay = false
        isStop = true
    }    
}
