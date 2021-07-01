// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteServiceProfileInput: Equatable {
    /// <p>The ID of the resource to delete.</p>
    public let id: String?

    public init (
        id: String? = nil
    )
    {
        self.id = id
    }
}

extension DeleteServiceProfileInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteServiceProfileInput(id: \(String(describing: id)))"}
}