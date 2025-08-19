class YamahaSZR150 {
    let engine: Engine
    let wheels: [Wheel]
    
    init(engine: Engine, wheels: [Wheel]) {
        self.engine = engine
        self.wheels = wheels
    }
}

extension YamahaSZR150: Motorcycle {
    func move() -> String {
        "Yamaha SZR150 moving"
    }
}
