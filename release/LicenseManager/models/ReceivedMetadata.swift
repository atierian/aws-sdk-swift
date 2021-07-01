// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Metadata associated with received licenses and grants.</p>
public struct ReceivedMetadata: Equatable {
    /// <p>Allowed operations.</p>
    public let allowedOperations: [AllowedOperation]?
    /// <p>Received status.</p>
    public let receivedStatus: ReceivedStatus?

    public init (
        allowedOperations: [AllowedOperation]? = nil,
        receivedStatus: ReceivedStatus? = nil
    )
    {
        self.allowedOperations = allowedOperations
        self.receivedStatus = receivedStatus
    }
}

extension ReceivedMetadata: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReceivedMetadata(allowedOperations: \(String(describing: allowedOperations)), receivedStatus: \(String(describing: receivedStatus)))"}
}