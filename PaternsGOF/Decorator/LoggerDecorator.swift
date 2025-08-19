class LoggerDecorator: MotorcycleDecorator {
    private let logger = Logger()
    
    override func move() -> String {
        logger.log(message: "LoggerDecorator moved")
        return super.move()
    }
}
