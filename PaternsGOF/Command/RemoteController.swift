class RemoteController {
    private let fan: FanDriver
    private let cleaner: XiaomiS20CleanerDriver
    private let blind: BlindDriver
    private let lamp: LampDriver
    init(fan: FanDriver, cleaner: XiaomiS20CleanerDriver, blind: BlindDriver, lamp: LampDriver) {
        self.fan = fan
        self.cleaner = cleaner
        self.blind = blind
        self.lamp = lamp
    }
    
    // Fan
    func setFanSpeedToLow() {
        fan.set(speed: .low)
    }
    
    func setFanSpeedToMedium() {
        fan.set(speed: .medium)
    }
    
    func setFanSpeedToHigh() {
        fan.set(speed: .high)
    }
    
    func turnFanOff() {
        fan.turnOff()
    }
    
    // Cleaner
    func vacuumHome() {
        cleaner.set(mode: .vacuum)
        cleaner.set(state: .cleaning)
    }
    
    func mopHome() {
        cleaner.set(mode: .mop)
        cleaner.set(state: .cleaning)
    }
    
    func turnCleanerOff() {
        cleaner.set(state: .off)
    }
    
    // Blind
    func openBlind() {
        blind.set(height: 100)
    }
    
    func closeBlind() {
        blind.set(height: 0)
    }
    
    // Lamp
    func turnLampOn() {
        lamp.turnOn()
    }
    
    func turnLampOff() {
        lamp.turnOff()
    }
}
