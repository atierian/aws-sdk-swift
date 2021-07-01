// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A structure that is used to provide the status of the provisioning operation for a
///       specified permission set.</p>
public struct PermissionSetProvisioningStatus: Equatable {
    /// <p>The identifier of the AWS account from which to list the assignments.</p>
    public let accountId: String?
    /// <p>The date that the permission set was created.</p>
    public let createdDate: Date?
    /// <p>The message that contains an error or exception in case of an operation failure.</p>
    public let failureReason: String?
    /// <p>The ARN of the permission set that is being provisioned. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    /// Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
    public let permissionSetArn: String?
    /// <p>The identifier for tracking the request operation that is generated by the universally
    ///       unique identifier (UUID) workflow.</p>
    public let requestId: String?
    /// <p>The status of the permission set provisioning process.</p>
    public let status: StatusValues?

    public init (
        accountId: String? = nil,
        createdDate: Date? = nil,
        failureReason: String? = nil,
        permissionSetArn: String? = nil,
        requestId: String? = nil,
        status: StatusValues? = nil
    )
    {
        self.accountId = accountId
        self.createdDate = createdDate
        self.failureReason = failureReason
        self.permissionSetArn = permissionSetArn
        self.requestId = requestId
        self.status = status
    }
}

extension PermissionSetProvisioningStatus: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PermissionSetProvisioningStatus(accountId: \(String(describing: accountId)), createdDate: \(String(describing: createdDate)), failureReason: \(String(describing: failureReason)), permissionSetArn: \(String(describing: permissionSetArn)), requestId: \(String(describing: requestId)), status: \(String(describing: status)))"}
}