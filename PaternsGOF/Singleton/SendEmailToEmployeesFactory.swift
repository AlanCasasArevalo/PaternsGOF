class SendEmailToEmployeesFactory {
    
    private let singletonProvidable: SingletonProvidable

    init(singletonProvidable: SingletonProvidable) {
        self.singletonProvidable = singletonProvidable
    }
    
    func create() -> SendEmailToEmployeesUseCase {
        return SendEmailToEmployeesUseCase(singletonProvidable: singletonProvidable)
    }
}
