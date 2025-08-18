@testable import PaternsGOF
import Testing

struct HomeAutomationHubTests {

    @Test
    func openFrontDoorMakesFrontDoorOpenToTrue() async throws {
        // Given
        let sut = makeSUT()
        let expectedValue = true

        // When
        sut.openFrontDoor()
        
        let receivedValue = sut.exposePrivateFrontDoorOpen()
                
        // Then
        #expect(expectedValue == receivedValue)
    }

    @Test
    func closeFrontDoorMakesFrontDoorOpenToFalse() async throws {
        // Given
        let sut = makeSUT()
        let expectedValue = false

        // When
        sut.closeFrontDoor()
        
        let receivedValue = sut.exposePrivateFrontDoorOpen()
                
        // Then
        #expect(expectedValue == receivedValue)
    }

    @Test
    func setRoomTemperatureGetRightTemperature() async throws {
        // Given
        let sut = makeSUT()
        let expectedValue: Int = 30

        // When
        sut.setRoomTemperature(expectedValue)
        
        let receivedValue = sut.getRoomTemperature()
                
        // Then
        #expect(expectedValue == receivedValue)
    }
}

#if DEBUG
private extension HomeAutomationHub {
    func exposePrivateFrontDoorOpen() -> Bool {
        self.frontDoorOpen
    }
}
#endif

extension HomeAutomationHubTests {
    func makeSUT() -> HomeAutomationHub {
        HomeAutomationHub()
    }
}
