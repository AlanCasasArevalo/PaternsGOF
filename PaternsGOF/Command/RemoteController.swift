class RemoteController {
    private var commands: [Command]
    private var lastCommand: Command
    
    init(numberOfSlots: Int) {
        self.commands = Array(repeating: NullCommand(), count: numberOfSlots)
        self.lastCommand = NullCommand()
    }
    
    func pressButton(at index: Int) {
        validate(slot: index)
        commands[index].execute()
    }
    
    func setCommand(_ command: Command, at index: Int) {
        validate(slot: index)
        commands[index] = command
    }
    
    func removeCommand(at index: Int) {
        validate(slot: index)
        commands[index] = NullCommand()
    }
    
    func validate(slot index: Int) {
        precondition(index >= 0 && index < commands.count, "Invalid slot index")
    }
    
    func undo() {
        lastCommand.undo()
        lastCommand = NullCommand()
    }
}
