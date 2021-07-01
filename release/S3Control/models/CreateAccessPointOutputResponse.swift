// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateAccessPointOutputResponse: Equatable {
    /// <p>The ARN of the access point.</p>
    ///          <note>
    ///             <p>This is only supported by Amazon S3 on Outposts.</p>
    ///          </note>
    public let accessPointArn: String?

    public init (
        accessPointArn: String? = nil
    )
    {
        self.accessPointArn = accessPointArn
    }
}

extension CreateAccessPointOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateAccessPointOutputResponse(accessPointArn: \(String(describing: accessPointArn)))"}
}