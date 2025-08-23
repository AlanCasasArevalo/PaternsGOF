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
        result.setCommand(VacuumHomeCommand(cleaner: cleaner), at: 4)
        result.setCommand(MopFloorHomeCommand(cleaner: cleaner), at: 5)
        result.setCommand(TurnCleanerOffCommand(cleaner: cleaner), at: 6)
        
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
                VacuumHomeCommand(cleaner: cleaner),
                OpenBlindCommand(blind: blind),
                SetFanSpeedToHighCommand(fan: fan)
            ]
        )
        result.setCommand(wakeUpMacroCommand, at: 11)
        
        return result
    }
}
