@testable import PaternsGOF

class HomeTheaterLightsMock: HomeTheaterLights {
    var level: Int = 0
    
    func dim(level: Int) {
        self.level = level
    }
}
