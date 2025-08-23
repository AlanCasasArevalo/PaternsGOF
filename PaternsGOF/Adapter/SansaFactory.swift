class SansaFactory {
    func create() -> Sansa {
        let player = AdvancedPlayer()
        let adapter = AdvancedPlayerAdapter(adaptee: player)
        let result = Sansa(musicPlayer: adapter)
        return result
    }
}
