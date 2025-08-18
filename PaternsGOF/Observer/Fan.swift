final class Fan {
}

extension Fan: Device {
    func sensorsChanged() {
        print("Fan is activated")
    }
}
