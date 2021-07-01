// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The description of an Amazon EC2 instance.</p>
public struct Instance: Equatable {
    /// <p>The ID of the Amazon EC2 instance.</p>
    public let id: String?

    public init (
        id: String? = nil
    )
    {
        self.id = id
    }
}

extension Instance: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Instance(id: \(String(describing: id)))"}
}