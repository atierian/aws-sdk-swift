// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the request to delete a user.</p>
public struct DeleteUserInput: Equatable {
    /// <p>The access token from a request to delete a user.</p>
    public let accessToken: String?

    public init (
        accessToken: String? = nil
    )
    {
        self.accessToken = accessToken
    }
}

extension DeleteUserInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteUserInput(accessToken: \(String(describing: accessToken)))"}
}