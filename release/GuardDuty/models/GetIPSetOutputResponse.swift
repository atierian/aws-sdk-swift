// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetIPSetOutputResponse: Equatable {
    /// <p>The format of the file that contains the IPSet.</p>
    public let format: IpSetFormat?
    /// <p>The URI of the file that contains the IPSet. For example:
    ///       https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.</p>
    public let location: String?
    /// <p>The user-friendly name for the IPSet.</p>
    public let name: String?
    /// <p>The status of IPSet file that was uploaded.</p>
    public let status: IpSetStatus?
    /// <p>The tags of the IPSet resource.</p>
    public let tags: [String:String]?

    public init (
        format: IpSetFormat? = nil,
        location: String? = nil,
        name: String? = nil,
        status: IpSetStatus? = nil,
        tags: [String:String]? = nil
    )
    {
        self.format = format
        self.location = location
        self.name = name
        self.status = status
        self.tags = tags
    }
}

extension GetIPSetOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetIPSetOutputResponse(format: \(String(describing: format)), location: \(String(describing: location)), name: \(String(describing: name)), status: \(String(describing: status)), tags: \(String(describing: tags)))"}
}