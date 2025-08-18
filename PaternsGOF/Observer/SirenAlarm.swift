final class SirenAlarm {
}

extension SirenAlarm: Device {
    func sensorsChanged() {
        print("SirenAlarm is activated")
    }
}
