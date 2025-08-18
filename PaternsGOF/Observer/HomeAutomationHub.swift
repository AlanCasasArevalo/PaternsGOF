final class HomeAutomationHub {
    internal var frontDoorOpen: Bool
    private var roomTemperature: Int
    private var fan: Fan?
    private var sirenAlarm: SirenAlarm?
    
    init() {
        self.frontDoorOpen = false
        self.roomTemperature = 0
    }
}

extension HomeAutomationHub {
    func set(fan: Fan) {
        self.fan = fan
    }

    func set(sirenAlarm: SirenAlarm) {
        self.sirenAlarm = sirenAlarm
    }
}

extension HomeAutomationHub {
    func openFrontDoor() {
        frontDoorOpen = true
        if let sirenAlarm = sirenAlarm {
            sirenAlarm.activate()
        }
    }
    
    func closeFrontDoor() {
        frontDoorOpen = false
    }
    
    func setRoomTemperature(_ temperature: Int) {
        roomTemperature = temperature
        if temperature > 25 {
            if let fan = fan {
                fan.activate()
            }
        }
    }
    
    func getRoomTemperature() -> Int {
        roomTemperature
    }
}
