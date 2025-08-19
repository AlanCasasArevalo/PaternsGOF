class MotorcycleDecorator {
    private let wrapper: Motorcycle
    
    init(wrapper: Motorcycle) {
        self.wrapper = wrapper
    }
    
    func move() -> String {
        wrapper.move()
    }
}
