// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteTagOptionInput: Equatable {
    /// <p>The TagOption identifier.</p>
    public let id: String?

    public init (
        id: String? = nil
    )
    {
        self.id = id
    }
}

extension DeleteTagOptionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteTagOptionInput(id: \(String(describing: id)))"}
}