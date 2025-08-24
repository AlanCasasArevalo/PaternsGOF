@testable import PaternsGOF

class DvdPlayerMock: DvdPlayer {
    var isOn: Bool = false
    var isEject: Bool = false
    var isPlay: Bool = false
    var isStop: Bool = false
    var isSurroundAudio: Bool = false
    var isTwoChannelAudio: Bool = false
    
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
    
    func play(movie: String) {
        isOn = true
        isPlay = true
    }
    
    func setSurroundAudio() {
        isSurroundAudio = true
    }
    
    func setTwoChannelAudio() {
        isTwoChannelAudio = true
    }
    
    func stop() {
        isPlay = false
        isStop = true
    }
}
