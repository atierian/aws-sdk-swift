// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateUserProfileOutputResponse: Equatable {
    /// <p>The user profile Amazon Resource Name (ARN).</p>
    public let userProfileArn: String?

    public init (
        userProfileArn: String? = nil
    )
    {
        self.userProfileArn = userProfileArn
    }
}

extension UpdateUserProfileOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateUserProfileOutputResponse(userProfileArn: \(String(describing: userProfileArn)))"}
}