class SansaMP4Player {
    let videoPlayer: VideoPlayer
    init(videoPlayer: VideoPlayer) {
        self.videoPlayer = videoPlayer
    }
    func playVideo() {
        let playing = videoPlayer.playVideo(fileName: "somefilm.mp4")
        videoPlayer.executeSomethingElse()
        videoPlayer.pauseVideo()
        videoPlayer.pauseVideo()
        videoPlayer.resumeVideo()
        print(playing)
    }
}
