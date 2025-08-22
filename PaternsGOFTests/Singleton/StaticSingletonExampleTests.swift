@testable import PaternsGOF
import Testing

struct StaticSingletonExampleTests {

    @Test
    func incrementOnceReturnsOdd() async throws {
        // Given
        let sut = makeSUT()
        let expectedValue = "odd"
        let expectedCounterValue = 1

        // When
        sut.increment()
        let receivedValue = sut.getDescription()
        let receivedCounterValue = sut.getValue()

        // Then
        #expect(receivedValue == expectedValue)
        #expect(receivedCounterValue == expectedCounterValue)
    }

    @Test
    func incrementOnceReturnsEven() async throws {
        // Given
        let sut = makeSUT()
        let expectedValue = "even"
        let expectedCounterValue = 2
        
        // When
        sut.increment()
        sut.increment()
        let receivedValue = sut.getDescription()
        let receivedCounterValue = sut.getValue()
        
        // Then
        #expect(receivedValue == expectedValue)
        #expect(receivedCounterValue == expectedCounterValue)
    }
}

extension StaticSingletonExampleTests {
    func makeSUT() -> StaticSingletonExample {
        return StaticSingletonExample.sharedInstance()
    }
}
