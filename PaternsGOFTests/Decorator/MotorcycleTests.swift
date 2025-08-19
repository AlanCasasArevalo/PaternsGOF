@testable import PaternsGOF
import Testing

struct MotorcycleTests {

    @Test
    func moveYamahaSZR150() async throws {
        // Given
        let sut = makeSUT()
        let expectedValue = "Yamaha SZR150 moving"

        // When
        let receivedValue = sut.move()
        
        // Then
        #expect(receivedValue == expectedValue)
    }

    @Test
    func moveMotorcycleWithSliders() async throws {
        // Given
        let sut = makeSUT()
        let sutMotorcycleSliders = makeSUTMotorcycleSliders(sut: sut)
        let expectedValue = "Yamaha SZR150 moving with sliders"

        // When
        let receivedValue = sutMotorcycleSliders.move()
        
        // Then
        #expect(receivedValue == expectedValue)
    }

    @Test
    func moveMotorcycleWithTrunk() async throws {
        // Given
        let sut = makeSUT()
        let sutMotorcycleTrunk = makeSUTMotorcycleTrunk(sut: sut)
        let expectedValue = "Yamaha SZR150 moving with trunk"

        // When
        let receivedValue = sutMotorcycleTrunk.move()
        
        // Then
        #expect(receivedValue == expectedValue)
    }

    @Test
    func moveTimeMeasure() async throws {
        // Given
        let sut = makeSUT()
        let sutTimeMeasureDecorator = TimeMeasureDecorator(wrapper: sut)
        let expectedValue = "Yamaha SZR150 moving"

        // When
        let receivedValue = sutTimeMeasureDecorator.move()
        
        // Then
        #expect(receivedValue == expectedValue)
    }

    @Test
    func moveLoggerDecorator() async throws {
        // Given
        let sut = makeSUT()
        let sutLoggerDecorator = LoggerDecorator(wrapper: sut)
        let expectedValue = "Yamaha SZR150 moving"

        // When
        let receivedValue = sutLoggerDecorator.move()
        
        // Then
        #expect(receivedValue == expectedValue)
    }
}

extension MotorcycleTests {
    func makeSUT() -> YamahaSZR150 {
        let engine = MockEngine()
        let wheels: [Wheel] = []
        return YamahaSZR150(engine: engine, wheels: wheels)
    }

    func makeSUTMotorcycleSliders(sut: Motorcycle) -> MotorcycleSliders {
        return MotorcycleSliders(wrapper: sut)
    }

    func makeSUTMotorcycleTrunk(sut: Motorcycle) -> MotorcycleTrunk {
        return MotorcycleTrunk(wrapper: sut)
    }
}
extension MotorcycleTests {
    class MockEngine: Engine {
    }
}
