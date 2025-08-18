final class SirenAlarm {
}

extension SirenAlarm: Device {
    func sensorChanged() {
        print("SirenAlarm is activated")
    }
}
