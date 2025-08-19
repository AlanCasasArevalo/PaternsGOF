import Testing
@testable import PaternsGOF

struct KVOTests {

    @Test
    func someTest() {
        let subject = SomeSubject(name: "David")
        let observer = SomeObserver()
        
        subject.addObserver(
            observer,
            forKeyPath: #keyPath(SomeSubject.name),
            options: [.new, .old],
            context: nil)
        
        subject.name = "Luis"
        
        #expect(observer.result == "La propiedad con el keyPath 'name' antes era David y ahora tiene el valor Luis")
    }
}
