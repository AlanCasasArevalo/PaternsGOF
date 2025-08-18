final class HomeAutomationHub {
    internal var frontDoorOpen: Bool
    private var roomTemperature: Int
    
    init() {
        self.frontDoorOpen = false
        self.roomTemperature = 0
    }
}

extension HomeAutomationHub {
    func openFrontDoor() {
        frontDoorOpen = true
    }
    
    func closeFrontDoor() {
        frontDoorOpen = false
    }
    
    func setRoomTemperature(_ temperature: Int) {
        roomTemperature = temperature
    }
    
    func getRoomTemperature() -> Int {
        roomTemperature
    }
}
