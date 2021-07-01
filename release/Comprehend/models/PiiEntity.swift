// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides information about a PII entity.</p>
public struct PiiEntity: Equatable {
    /// <p>A character offset in the input text that shows where the PII entity begins (the first
    ///       character is at position 0). The offset returns the position of each UTF-8 code point in the
    ///       string. A <i>code point</i> is the abstract character from a particular
    ///       graphical representation. For example, a multi-byte UTF-8 character maps to a single code
    ///       point.</p>
    public let beginOffset: Int?
    /// <p>A character offset in the input text that shows where the PII entity ends. The offset
    ///       returns the position of each UTF-8 code point in the string. A <i>code point</i>
    ///       is the abstract character from a particular graphical representation. For example, a
    ///       multi-byte UTF-8 character maps to a single code point.</p>
    public let endOffset: Int?
    /// <p>The level of confidence that Amazon Comprehend has in the accuracy of the
    ///       detection.</p>
    public let score: Float?
    /// <p>The entity's type.</p>
    public let type: PiiEntityType?

    public init (
        beginOffset: Int? = nil,
        endOffset: Int? = nil,
        score: Float? = nil,
        type: PiiEntityType? = nil
    )
    {
        self.beginOffset = beginOffset
        self.endOffset = endOffset
        self.score = score
        self.type = type
    }
}

extension PiiEntity: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PiiEntity(beginOffset: \(String(describing: beginOffset)), endOffset: \(String(describing: endOffset)), score: \(String(describing: score)), type: \(String(describing: type)))"}
}