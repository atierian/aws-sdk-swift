// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Summary of the membership details of an <code>AppInstanceUser</code>.</p>
public struct AppInstanceUserMembershipSummary: Equatable {
    /// <p>The time at which a message was last read.</p>
    public let readMarkerTimestamp: Date?
    /// <p>The type of <code>ChannelMembership</code>.</p>
    public let type: ChannelMembershipType?

    public init (
        readMarkerTimestamp: Date? = nil,
        type: ChannelMembershipType? = nil
    )
    {
        self.readMarkerTimestamp = readMarkerTimestamp
        self.type = type
    }
}

extension AppInstanceUserMembershipSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AppInstanceUserMembershipSummary(readMarkerTimestamp: \(String(describing: readMarkerTimestamp)), type: \(String(describing: type)))"}
}