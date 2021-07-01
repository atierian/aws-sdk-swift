// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateStreamOutputResponse: Equatable {
    /// <p>A description of the stream.</p>
    public let description: String?
    /// <p>The stream ARN.</p>
    public let streamArn: String?
    /// <p>The stream ID.</p>
    public let streamId: String?
    /// <p>The version of the stream.</p>
    public let streamVersion: Int?

    public init (
        description: String? = nil,
        streamArn: String? = nil,
        streamId: String? = nil,
        streamVersion: Int? = nil
    )
    {
        self.description = description
        self.streamArn = streamArn
        self.streamId = streamId
        self.streamVersion = streamVersion
    }
}

extension CreateStreamOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateStreamOutputResponse(description: \(String(describing: description)), streamArn: \(String(describing: streamArn)), streamId: \(String(describing: streamId)), streamVersion: \(String(describing: streamVersion)))"}
}