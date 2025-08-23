class RemoteController {
    private let setFanSpeedToLowCommand: Command
    private let setFanSpeedToMediumCommand: Command
    private let setFanSpeedToHighCommand: Command
    private let turnFanOffCommand: Command
    private let vacuumHomeCommand: Command
    private let mopHomeCommand: Command
    private let turnCleanerOffCommand: Command
    private let openBlindCommand: Command
    private let closeBlindCommand: Command
    private let turnLampOnCommand: Command
    private let turnLampOffCommand: Command
    
    init(
        setFanSpeedToLowCommand: Command,
        setFanSpeedToMediumCommand: Command,
        setFanSpeedToHighCommand: Command,
        turnFanOffCommand: Command,
        vacuumHomeCommand: Command,
        mopHomeCommand: Command,
        turnCleanerOffCommand: Command,
        openBlindCommand: Command,
        closeBlindCommand: Command,
        turnLampOnCommand: Command,
        turnLampOffCommand: Command
    ) {
        self.setFanSpeedToLowCommand = setFanSpeedToLowCommand
        self.setFanSpeedToMediumCommand = setFanSpeedToMediumCommand
        self.setFanSpeedToHighCommand = setFanSpeedToHighCommand
        self.turnFanOffCommand = turnFanOffCommand
        self.vacuumHomeCommand = vacuumHomeCommand
        self.mopHomeCommand = mopHomeCommand
        self.turnCleanerOffCommand = turnCleanerOffCommand
        self.openBlindCommand = openBlindCommand
        self.closeBlindCommand = closeBlindCommand
        self.turnLampOnCommand = turnLampOnCommand
        self.turnLampOffCommand = turnLampOffCommand
    }
    
    // Fan
    func setFanSpeedToLow() {
        setFanSpeedToLowCommand.execute()
    }
    
    func setFanSpeedToMedium() {
        setFanSpeedToMediumCommand.execute()
    }
    
    func setFanSpeedToHigh() {
        setFanSpeedToHighCommand.execute()
    }
    
    func turnFanOff() {
        turnFanOffCommand.execute()
    }
    
    // Cleaner
    func vacuumHome() {
        vacuumHomeCommand.execute()
    }
    
    func mopHome() {
        mopHomeCommand.execute()
    }
    
    func turnCleanerOff() {
        turnCleanerOffCommand.execute()
    }
    
    // Blind
    func openBlind() {
        openBlindCommand.execute()
    }
    
    func closeBlind() {
        closeBlindCommand.execute()
    }
    
    // Lamp
    func turnLampOn() {
        turnLampOnCommand.execute()
    }
    
    func turnLampOff() {
        turnLampOffCommand.execute()
    }
}
