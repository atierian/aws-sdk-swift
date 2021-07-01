// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateIPSetInput: Equatable {
    /// <p>A Boolean value that indicates whether GuardDuty is to start using the uploaded
    ///       IPSet.</p>
    public let activate: Bool
    /// <p>The idempotency token for the create request.</p>
    public var clientToken: String?
    /// <p>The unique ID of the detector of the GuardDuty account that you want to create an IPSet
    ///       for.</p>
    public let detectorId: String?
    /// <p>The format of the file that contains the IPSet.</p>
    public let format: IpSetFormat?
    /// <p>The URI of the file that contains the IPSet. For example:
    ///       https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.</p>
    public let location: String?
    /// <p>The user-friendly name to identify the IPSet.</p>
    ///          <p> Allowed characters are alphanumerics, spaces, hyphens (-), and underscores (_).</p>
    public let name: String?
    /// <p>The tags to be added to a new IP set resource.</p>
    public let tags: [String:String]?

    public init (
        activate: Bool = false,
        clientToken: String? = nil,
        detectorId: String? = nil,
        format: IpSetFormat? = nil,
        location: String? = nil,
        name: String? = nil,
        tags: [String:String]? = nil
    )
    {
        self.activate = activate
        self.clientToken = clientToken
        self.detectorId = detectorId
        self.format = format
        self.location = location
        self.name = name
        self.tags = tags
    }
}

extension CreateIPSetInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateIPSetInput(activate: \(String(describing: activate)), clientToken: \(String(describing: clientToken)), detectorId: \(String(describing: detectorId)), format: \(String(describing: format)), location: \(String(describing: location)), name: \(String(describing: name)), tags: \(String(describing: tags)))"}
}