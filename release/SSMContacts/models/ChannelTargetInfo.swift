// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about the contact channel that Incident Manager uses to engage the
///          contact.</p>
public struct ChannelTargetInfo: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    public let contactChannelId: String?
    /// <p>The number of minutes to wait to retry sending engagement in the case the engagement
    ///          initially fails.</p>
    public let retryIntervalInMinutes: Int?

    public init (
        contactChannelId: String? = nil,
        retryIntervalInMinutes: Int? = nil
    )
    {
        self.contactChannelId = contactChannelId
        self.retryIntervalInMinutes = retryIntervalInMinutes
    }
}

extension ChannelTargetInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ChannelTargetInfo(contactChannelId: \(String(describing: contactChannelId)), retryIntervalInMinutes: \(String(describing: retryIntervalInMinutes)))"}
}