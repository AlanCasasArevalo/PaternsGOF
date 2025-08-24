@testable import PaternsGOF
import Testing

struct RemoteControllerTests {
    @Test
    func basicVacuumHomeCommandExecuted() async throws {
        // Given
        let cleaner = makeSUT()
        let sut = VacuumHomeCommand(cleaner: cleaner)
        let expectedValue: Cleaner.Mode = .vacuum

        // When
        sut.execute()
        
        // Then
        #expect(cleaner.mode == expectedValue)
    }

    @Test
    func basicVacuumHomeCommandUndo() async throws {
        // Given
        let cleaner = makeSUT()
        let sut = VacuumHomeCommand(cleaner: cleaner)
        let expectedValue: Cleaner.Mode = .all

        // When
        sut.execute()
        sut.undo()
        
        // Then
        #expect(cleaner.mode == expectedValue)
    }

    @Test
    func basicMopFloorHomeCommandExecuted() async throws {
        // Given
        let cleaner = makeSUT()
        let sut = MopFloorHomeCommand(cleaner: cleaner)
        let expectedValue: Cleaner.Mode = .mop

        // When
        sut.execute()
        
        // Then
        #expect(cleaner.mode == expectedValue)
    }

    @Test
    func basicMopFloorHomeCommandUndo() async throws {
        // Given
        let cleaner = makeSUT()
        let sut = MopFloorHomeCommand(cleaner: cleaner)
        let expectedValue: Cleaner.Mode = .all

        // When
        sut.execute()
        sut.undo()
        
        // Then
        #expect(cleaner.mode == expectedValue)
    }

    @Test
    func basicTurnCleanerOffCommandExecuted() async throws {
        // Given
        let cleaner = makeSUT()
        let sut = TurnCleanerOffCommand(cleaner: cleaner)
        let expectedValue: Cleaner.Mode = .all

        // When
        sut.execute()
        
        // Then
        #expect(cleaner.mode == expectedValue)
    }

    @Test
    func basicTurnCleanerOffCommandUndo() async throws {
        // Given
        let cleaner = makeSUT()
        let sut = TurnCleanerOffCommand(cleaner: cleaner)
        let expectedValue: Cleaner.Mode = .all

        // When
        sut.execute()
        sut.undo()
        
        // Then
        #expect(cleaner.mode == expectedValue)
    }
}

extension RemoteControllerTests {
    func makeSUT(
        mode: Cleaner.Mode = .all,
        state: Cleaner.State = .off
    ) -> FakeCleaner {
        let cleaner = FakeCleaner(mode: mode, state: state)
        return cleaner
    }
}
