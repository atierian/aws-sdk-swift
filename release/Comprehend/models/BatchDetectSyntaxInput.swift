// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchDetectSyntaxInput: Equatable {
    /// <p>The language of the input documents. You can specify any of the following languages
    ///       supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"),
    ///       Italian ("it"), or Portuguese ("pt"). All documents must be in the same language.</p>
    public let languageCode: SyntaxLanguageCode?
    /// <p>A list containing the text of the input documents. The list can contain a maximum of 25
    ///       documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded
    ///       characters.</p>
    public let textList: [String]?

    public init (
        languageCode: SyntaxLanguageCode? = nil,
        textList: [String]? = nil
    )
    {
        self.languageCode = languageCode
        self.textList = textList
    }
}

extension BatchDetectSyntaxInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchDetectSyntaxInput(languageCode: \(String(describing: languageCode)), textList: \(String(describing: textList)))"}
}