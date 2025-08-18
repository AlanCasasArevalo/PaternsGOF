final class Fan {
}

extension Fan: Device {
    func sensorChanged() {
        print("Fan is activated")
    }
}
