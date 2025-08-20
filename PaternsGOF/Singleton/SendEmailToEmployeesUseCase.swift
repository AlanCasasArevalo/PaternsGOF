class SendEmailToEmployeesUseCase {
    let ceo: CEOProtocol
    
    init(ceo: CEOProtocol) {
        self.ceo = ceo
    }
    
    func execute() {
        let message = ceo.greet()
        print(message)
    }
}
