// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisableOrganizationAdminAccountInput: Equatable {
    /// <p>The AWS account ID of the delegated Amazon Macie administrator account.</p>
    public let adminAccountId: String?

    public init (
        adminAccountId: String? = nil
    )
    {
        self.adminAccountId = adminAccountId
    }
}

extension DisableOrganizationAdminAccountInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisableOrganizationAdminAccountInput(adminAccountId: \(String(describing: adminAccountId)))"}
}