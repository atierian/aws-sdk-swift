// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The user profile details.</p>
public struct UserProfileDetails: Equatable {
    /// <p>The creation time.</p>
    public let creationTime: Date?
    /// <p>The domain ID.</p>
    public let domainId: String?
    /// <p>The last modified time.</p>
    public let lastModifiedTime: Date?
    /// <p>The status.</p>
    public let status: UserProfileStatus?
    /// <p>The user profile name.</p>
    public let userProfileName: String?

    public init (
        creationTime: Date? = nil,
        domainId: String? = nil,
        lastModifiedTime: Date? = nil,
        status: UserProfileStatus? = nil,
        userProfileName: String? = nil
    )
    {
        self.creationTime = creationTime
        self.domainId = domainId
        self.lastModifiedTime = lastModifiedTime
        self.status = status
        self.userProfileName = userProfileName
    }
}

extension UserProfileDetails: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UserProfileDetails(creationTime: \(String(describing: creationTime)), domainId: \(String(describing: domainId)), lastModifiedTime: \(String(describing: lastModifiedTime)), status: \(String(describing: status)), userProfileName: \(String(describing: userProfileName)))"}
}