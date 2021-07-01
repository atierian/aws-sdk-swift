// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about the Amazon Macie Classic member account.</p>
public struct MemberAccount: Equatable {
    /// <p>The AWS account ID of the Amazon Macie Classic member account.</p>
    public let accountId: String?

    public init (
        accountId: String? = nil
    )
    {
        self.accountId = accountId
    }
}

extension MemberAccount: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MemberAccount(accountId: \(String(describing: accountId)))"}
}