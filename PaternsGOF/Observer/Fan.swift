class Fan {
    private let dataSource: RoomTemperatureRetriever
    
    init(dataSource: RoomTemperatureRetriever) {
        self.dataSource = dataSource
    }
    
    func activate() {
        print("Fan is activated")
    }
}

extension Fan: Device {
    func sensorsChanged() {
        if dataSource.getRoomTemperature() > 25 {
            activate()
        }
    }
}
