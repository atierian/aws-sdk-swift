// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The phone number and proxy phone number for a participant in an Amazon Chime Voice Connector proxy session.</p>
public struct Participant: Equatable {
    /// <p>The participant's phone number.</p>
    public let phoneNumber: String?
    /// <p>The participant's proxy phone number.</p>
    public let proxyPhoneNumber: String?

    public init (
        phoneNumber: String? = nil,
        proxyPhoneNumber: String? = nil
    )
    {
        self.phoneNumber = phoneNumber
        self.proxyPhoneNumber = proxyPhoneNumber
    }
}

extension Participant: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Participant(phoneNumber: \(String(describing: phoneNumber)), proxyPhoneNumber: \(String(describing: proxyPhoneNumber)))"}
}