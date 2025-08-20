class SendEmailToEmployeesUseCase {
    func execute() {
        let message = CEO.getInstance().greet()
        print(message)
    }
}
