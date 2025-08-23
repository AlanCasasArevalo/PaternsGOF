class Sansa {
    private let musicPlayer: MusicPlayer
    init(musicPlayer: MusicPlayer) {
        self.musicPlayer = musicPlayer
    }
    func playSong() {
        let playing = musicPlayer.playSong(fileName: "song.mp3")
        print(playing)
    }
}
