class SirenAlarm {
    private let dataSource: DoorStateRetriever
    private let previousFrontDoorOpen = false

    init(dataSource: DoorStateRetriever) {
        self.dataSource = dataSource
    }
    
    func activate() {
        print("SirenAlarm is activated")
    }
}

extension SirenAlarm: Device {
    func sensorsChanged() {
        let frontDoorOpen = dataSource.getFrontDoorOpen()
        if previousFrontDoorOpen != frontDoorOpen && frontDoorOpen {
            activate()
        }
    }
}
