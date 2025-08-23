class AdvancedPlayerAdapter: MusicPlayer {
    let adaptee: AdvancedPlayer
    init(adaptee: AdvancedPlayer) {
        self.adaptee = adaptee
    }
    
    func playSong(fileName: String) -> String {
        adaptee.playMP3(fileName: fileName)
    }
}
