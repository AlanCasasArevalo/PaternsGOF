class RemoteControllerClient {
    func main() {
        let remoteController = RemoteControllerFactory().create()
        remoteController.pressButton(at: 0)
    }
}
