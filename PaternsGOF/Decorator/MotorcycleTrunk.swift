class MotorcycleTrunk: MotorcycleDecorator {
    override func move() -> String {
        super.move() + " with trunk"
    }
}
