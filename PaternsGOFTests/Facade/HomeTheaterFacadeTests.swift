@testable import PaternsGOF
import Testing

struct HomeTheaterFacadeTests {
    
    @Test
    func watch() async throws {
        // Given
        let (sut, amplifier, _, dvd, _, projector, screen, popper, lights) = makeSUT()
        let movie = "Oz"
        
        // When
        sut.watch(movie: movie)
        let amplifierOn = amplifier.isOn
        let amplifierSetDvd = amplifier.isSetDvd
        let amplifierSetSurroundSound = amplifier.isSurrondSound
        let amplifierVolumeUp = amplifier.volume
        let dvdPlay = dvd.isPlay
        let dvdIsOn = dvd.isOn
        let projectorOn = projector.isOn
        let projectorWideScreenMode = projector.isWideScreenMode
        let screenUp = screen.isUp
        let screenDown = screen.isDown
        let popperPop = popper.isOn
        let popperIsPop = popper.isPopped
        let lightsLevel = lights.level
        
        // Then
        #expect(amplifierOn == true)
        #expect(amplifierSetDvd == true)
        #expect(amplifierSetSurroundSound == true)
        #expect(amplifierVolumeUp == 5)
        #expect(dvdPlay == true)
        #expect(dvdIsOn == true)
        #expect(projectorOn == true)
        #expect(projectorWideScreenMode == true)
        #expect(screenUp == false)
        #expect(screenDown == true)
        #expect(popperPop == true)
        #expect(popperIsPop == true)
        #expect(lightsLevel == 10)
    }
}

extension HomeTheaterFacadeTests {
    func makeSUT() -> (
        sut: HomeTheaterFacade,
        amplifier: AmplifierMock,
        tuner: TunerMock,
        dvd: DvdPlayerMock,
        cd:  CdPlayerMock,
        projector:  ProjectorMock,
        screen:  ScreenMock,
        popper:  PopcornPopperMock,
        lights: HomeTheaterLightsMock
    ) {
        let amplifier = AmplifierMock()
        let tuner = TunerMock()
        let dvd = DvdPlayerMock()
        let cd = CdPlayerMock()
        let projector = ProjectorMock()
        let screen = ScreenMock()
        let popper = PopcornPopperMock()
        let lights = HomeTheaterLightsMock()
        
        let sut = HomeTheaterFacade(
            amp: amplifier,
            tuner: tuner,
            dvd: dvd,
            cd: cd,
            projector: projector,
            screen: screen, popper: popper,
            lights: lights
        )
        
        return (sut, amplifier, tuner, dvd, cd, projector, screen, popper, lights)
    }
}
