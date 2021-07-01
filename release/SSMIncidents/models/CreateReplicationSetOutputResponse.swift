// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateReplicationSetOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the replication set. </p>
    public let arn: String?

    public init (
        arn: String? = nil
    )
    {
        self.arn = arn
    }
}

extension CreateReplicationSetOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateReplicationSetOutputResponse(arn: \(String(describing: arn)))"}
}