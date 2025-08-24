class HomeTheaterFacade {
    let amp: Amplifier
    let tuner: Tuner
    let dvd: DvdPlayer
    let cd: CdPlayer
    let projector: Projector
    let screen: Screen
    let popper: PopcornPopper
    let lights: HomeTheaterLights
    
    init(amp: Amplifier, tuner: Tuner, dvd: DvdPlayer, cd: CdPlayer, projector: Projector, screen: Screen, popper: PopcornPopper, lights: HomeTheaterLights) {
        self.amp = amp
        self.tuner = tuner
        self.dvd = dvd
        self.cd = cd
        self.projector = projector
        self.screen = screen
        self.popper = popper
        self.lights = lights
    }
    
    func watch(movie: String) {
        print("Get ready to watch a movie")
        popper.on()
        popper.pop()
        lights.dim(level: 10)
        screen.down()
        projector.on()
        projector.wideScreenMode()
        amp.on()
        amp.setDvd()
        amp.setSurroundSound()
        amp.set(volume: 5)
        dvd.on()
        dvd.play(movie: movie)
    }
}
