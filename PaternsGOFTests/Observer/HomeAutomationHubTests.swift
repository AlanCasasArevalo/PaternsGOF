@testable import PaternsGOF
import Testing

struct HomeAutomationHubTests {

    @Test
    func openFrontDoorMakesFrontDoorOpenToTrue() async throws {
        // Given
        let (sut, siren, fan) = makeSUT()
        let expectedValue = true

        // When
        sut.openFrontDoor()
        
        let receivedValue = sut.exposePrivateFrontDoorOpen()
                
        // Then
        #expect(expectedValue == receivedValue)
        #expect(siren.active)
        #expect(!fan.active)
    }

    @Test
    func closeFrontDoorMakesFrontDoorOpenToFalse() async throws {
        // Given
        let (sut, siren, fan) = makeSUT()
        let expectedValue = false

        // When
        sut.closeFrontDoor()
        
        let receivedValue = sut.exposePrivateFrontDoorOpen()
                
        // Then
        #expect(expectedValue == receivedValue)
        #expect(!siren.active)
        #expect(!fan.active)
    }

    @Test
    func setRoomTemperatureGetRightTemperature() async throws {
        // Given
        let (sut, siren, fan) = makeSUT()
        let expectedValue: Int = 30

        // When
        sut.setRoomTemperature(expectedValue)
        
        let receivedValue = sut.getRoomTemperature()
                
        // Then
        #expect(expectedValue == receivedValue)
        #expect(!siren.active)
        #expect(fan.active)
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
    func makeSUT() -> (sut: HomeAutomationHub, sirenAlarm: SirenAlarmMock, fan: FanMock) {
        let sut = HomeAutomationHub()
        let sirenAlarm = makeSirenAlarm(sut: sut)
        let fan = makeFan(sut: sut)
        return (sut, sirenAlarm, fan)
    }

    func makeFan(sut: HomeAutomationHub) -> FanMock {
        let fan = FanMock(dataSource: sut)
        sut.add(fan)
        return fan
    }

    func makeSirenAlarm(sut: HomeAutomationHub) -> SirenAlarmMock {
        let siren = SirenAlarmMock(dataSource: sut)
        sut.add(siren)
        return siren
    }
    
    final class SirenAlarmMock: SirenAlarm {
        var active = false
        override func activate() {
            active = true
        }
    }
    
    final class FanMock: Fan {
        var active = false
        override func activate() {
            active = true
        }
    }
}
