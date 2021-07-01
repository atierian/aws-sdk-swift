// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetCelebrityInfoInput: Equatable {
    /// <p>The ID for the celebrity. You get the celebrity ID from a call to the <a>RecognizeCelebrities</a> operation,
    ///    which recognizes celebrities in an image. </p>
    public let id: String?

    public init (
        id: String? = nil
    )
    {
        self.id = id
    }
}

extension GetCelebrityInfoInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetCelebrityInfoInput(id: \(String(describing: id)))"}
}