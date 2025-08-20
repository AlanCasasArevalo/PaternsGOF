class SendEmailToEmployeesFactory {
    func create() -> SendEmailToEmployeesUseCase {
        let ceo = CEO.getInstance()
        return SendEmailToEmployeesUseCase(ceo: ceo)
    }
}
