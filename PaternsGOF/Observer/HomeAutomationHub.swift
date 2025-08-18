final class HomeAutomationHub {
    internal var frontDoorOpen: Bool
    private var roomTemperature: Int
    private var devices: [Device]?
    
    init() {
        self.frontDoorOpen = false
        self.roomTemperature = 0
    }
}

extension HomeAutomationHub {
    func add(_ device: Device) {
        devices?.append(device)
    }
    
//    func remove(_ device: Device) {
//        devices.removeAll { $0 === device }
//    }

    func notifyDevices() {
        devices?.forEach {
            $0.sensorChanged()
        }
    }
}

extension HomeAutomationHub {
    func openFrontDoor() {
        frontDoorOpen = true
        notifyDevices()
    }
    
    func closeFrontDoor() {
        frontDoorOpen = false
        notifyDevices()
    }
    
    func setRoomTemperature(_ temperature: Int) {
        roomTemperature = temperature
        notifyDevices()
    }
    
    func getRoomTemperature() -> Int {
        roomTemperature
    }
}
