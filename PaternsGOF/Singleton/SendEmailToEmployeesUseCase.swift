class SendEmailToEmployeesUseCase {
    let singletonProvidable: SingletonProvidable
    
    init(singletonProvidable: SingletonProvidable) {
        self.singletonProvidable = singletonProvidable
    }
    
    func execute() {
        let ceo = singletonProvidable.provideCEO()
        let message = ceo.greet()
        print(message)
    }
}
