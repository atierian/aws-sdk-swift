// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The <code>SuggestionTextWithHighlights</code> structure information.</p>
public struct SuggestionValue: Equatable {
    /// <p>The <code>SuggestionTextWithHighlights</code> structure that contains
    ///             the query suggestion text and highlights.</p>
    public let text: SuggestionTextWithHighlights?

    public init (
        text: SuggestionTextWithHighlights? = nil
    )
    {
        self.text = text
    }
}

extension SuggestionValue: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SuggestionValue(text: \(String(describing: text)))"}
}