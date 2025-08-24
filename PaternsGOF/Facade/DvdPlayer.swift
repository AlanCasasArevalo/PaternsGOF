protocol DvdPlayer {
    func on()
    func off()
    func eject()
    func pause()
    func play(movie: String)
    func setSurroundAudio()
    func setTwoChannelAudio()
    func stop()
}
