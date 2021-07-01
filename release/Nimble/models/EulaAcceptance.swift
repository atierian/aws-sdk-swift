// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct EulaAcceptance: Equatable {
    /// <p>The Unix epoch timestamp in seconds for when the EULA was accepted.</p>
    public let acceptedAt: Date?
    /// <p>The ID of the person who accepted the EULA.</p>
    public let acceptedBy: String?
    /// <p>The ID of the acceptee.</p>
    public let accepteeId: String?
    /// <p>The EULA acceptance ID.</p>
    public let eulaAcceptanceId: String?
    /// <p>The EULA ID.</p>
    public let eulaId: String?

    public init (
        acceptedAt: Date? = nil,
        acceptedBy: String? = nil,
        accepteeId: String? = nil,
        eulaAcceptanceId: String? = nil,
        eulaId: String? = nil
    )
    {
        self.acceptedAt = acceptedAt
        self.acceptedBy = acceptedBy
        self.accepteeId = accepteeId
        self.eulaAcceptanceId = eulaAcceptanceId
        self.eulaId = eulaId
    }
}

extension EulaAcceptance: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EulaAcceptance(acceptedAt: \(String(describing: acceptedAt)), acceptedBy: \(String(describing: acceptedBy)), accepteeId: \(String(describing: accepteeId)), eulaAcceptanceId: \(String(describing: eulaAcceptanceId)), eulaId: \(String(describing: eulaId)))"}
}