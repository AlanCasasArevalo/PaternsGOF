@testable import PaternsGOF
import Testing

struct TextProcessorTests {

    @Test
    func appendEmptyItemsGetEmptyResult() async throws {
        // Given
        let sut = makeSUT()
        
        // When
        sut.append(items: [])
        
        let expectedText = ""
        let resultText = sut.print()
                
        // Then
        #expect(expectedText == resultText)
    }

    @Test
    func appendMarkdownItemsGetRightResult() async throws {
        // Given
        let sut = makeSUT()
        let item1 = "one"
        let item2 = "two"
        
        // When
        sut.append(items: [item1, item2])
        
        let expectedText = """
 * \(item1)
 * \(item2)\n
"""
        let resultText = sut.print()
                        
        // Then
        #expect(expectedText == resultText)
    }

    @Test
    func appendMarkdownItemsGetRightResultAndWhenWeClearThenGetEmptyResult () async throws {
        // Given
        let sut = makeSUT()
        let item1 = "one"
        let item2 = "two"
        
        // When
        sut.append(items: [item1, item2])
        
        let expectedText = """
 * \(item1)
 * \(item2)\n
"""
        let resultText = sut.print()
        #expect(expectedText == resultText)
        
        // Then
        sut.clear()
        let expectedTextAfterClear = ""
        let resultTextAfterClear = sut.print()
        #expect(expectedTextAfterClear == resultTextAfterClear)
    }
    
    @Test
    func appendHTMLItemsGetRightResult() async throws {
        // Given
        let sut = makeSUT(outputFormat: .html)
        let item1 = "one"
        let item2 = "two"
        
        // When
        sut.append(items: [item1, item2])
        
        let expectedText = """
<ul>
<li>one</li>
<li>two</li>
</ul>

"""
        let resultText = sut.print()
                        
        // Then
        #expect(expectedText == resultText)
    }

    @Test
    func appendHTMLItemsGetRightResultAndWhenWeClearThenGetEmptyResult () async throws {
        // Given
        let sut = makeSUT(outputFormat: .html)
        let item1 = "one"
        let item2 = "two"
        
        // When
        sut.append(items: [item1, item2])
        
        let expectedText = """
<ul>
<li>one</li>
<li>two</li>
</ul>

"""
        let resultText = sut.print()
        #expect(expectedText == resultText)
        
        // Then
        sut.clear()
        let expectedTextAfterClear = ""
        let resultTextAfterClear = sut.print()
        #expect(expectedTextAfterClear == resultTextAfterClear)
    }
}

extension TextProcessorTests {
    func makeSUT(outputFormat: OutputFormat = .markdown) -> TextProcessor {
        TextProcessor(outputFormat: outputFormat)
    }
}
