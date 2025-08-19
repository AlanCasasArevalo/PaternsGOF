class TimeMeasureDecorator: MotorcycleDecorator {
    private let timeMeasure = TimeMeasure()

    override func move() -> String {
        timeMeasure.start()
        let message = super.move()
        timeMeasure.stop()
        return message
    }
}
