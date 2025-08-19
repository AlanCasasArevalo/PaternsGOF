class YamahaSZR150 {
    let engine: Engine
    let wheels: [Wheel]
    let timeMeasure = TimeMeasure()
    let logger = Logger()
    
    init(engine: Engine, wheels: [Wheel]) {
        self.engine = engine
        self.wheels = wheels
    }
}

extension YamahaSZR150: Motorcycle {
    func move() -> String {
        timeMeasure.start()
        let message = "Yamaha SZR150 moving"
        timeMeasure.stop()
        logger.log(message: "Yamaha SZR150 moved")
        return message
    }
}
