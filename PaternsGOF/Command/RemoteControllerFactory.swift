class RemoteControllerFactory {
    func create() -> RemoteController {
        let result: RemoteController = RemoteController(numberOfSlots: 12)

        // Fan
        let fan = FanDriver()
        result.setCommand(SetFanSpeedToLowCommand(fan: fan), at: 0)
        result.setCommand(SetFanSpeedToMediumCommand(fan: fan), at: 1)
        result.setCommand(SetFanSpeedToHighCommand(fan: fan), at: 2)
        result.setCommand(TurnFanOffCommand(fan: fan), at: 3)
        
        // Cleaner
        let cleaner = XiaomiS20CleanerDriver()
        let cleanerModeMapper = XiaomiS20CleanerDriverModeMapper()
        let cleanerStateMapper = XiaomiS20CleanerDriverStateMapper()
        let cleanerAdapter = XiaomiS20CleanerDriverAdapter(adaptee: cleaner, modeMapper: cleanerModeMapper, stateMapper: cleanerStateMapper)
        result.setCommand(VacuumHomeCommand(cleaner: cleanerAdapter), at: 4)
        result.setCommand(MopFloorHomeCommand(cleaner: cleanerAdapter), at: 5)
        result.setCommand(TurnCleanerOffCommand(cleaner: cleanerAdapter), at: 6)
        
        // Blind
        let blind = BlindDriver()
        result.setCommand(OpenBlindCommand(blind: blind), at: 7)
        result.setCommand(CloseBlindCommand(blind: blind), at: 8)

        // Lamp
        let lamp = LampDriver()
        result.setCommand(TurnLampOnCommand(lamp: lamp), at: 9)
        result.setCommand(TurnLampOffCommand(lamp: lamp), at: 10)
        
        // Macro command
        let wakeUpMacroCommand = MacroCommand(
            commands: [
                VacuumHomeCommand(cleaner: cleanerAdapter),
                OpenBlindCommand(blind: blind),
                SetFanSpeedToHighCommand(fan: fan)
            ]
        )
        result.setCommand(wakeUpMacroCommand, at: 11)
        
        return result
    }
}
