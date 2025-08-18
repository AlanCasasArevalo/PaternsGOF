final class HomeAutomationHub {
    internal var frontDoorOpen: Bool
    private var roomTemperature: Int
    private var devices: [Device]
    
    init() {
        self.frontDoorOpen = false
        self.roomTemperature = 0
        devices = []
    }
}

extension HomeAutomationHub {
    func add(_ device: Device) {
        devices.append(device)
    }
    
    func remove(device: Device) {
        devices.removeAll(
            where: { $0 === device })
    }

    func notifyDevices() {
        devices.forEach {
            $0.sensorsChanged()
        }
    }
}

extension HomeAutomationHub: DoorStateRetriever {
    func getFrontDoorOpen() -> Bool {
        frontDoorOpen
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
}

extension HomeAutomationHub: RoomTemperatureRetriever {
    func getRoomTemperature() -> Int {
        roomTemperature
    }
}
