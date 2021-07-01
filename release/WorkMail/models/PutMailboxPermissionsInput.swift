// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutMailboxPermissionsInput: Equatable {
    /// <p>The identifier of the user, group, or resource for which to update mailbox
    ///          permissions.</p>
    public let entityId: String?
    /// <p>The identifier of the user, group, or resource to which to grant the
    ///          permissions.</p>
    public let granteeId: String?
    /// <p>The identifier of the organization under which the user, group, or resource
    ///          exists.</p>
    public let organizationId: String?
    /// <p>The permissions granted to the grantee. SEND_AS allows the grantee to send email as
    ///          the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF
    ///          allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not
    ///          mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full
    ///          access to the mailbox, irrespective of other folder-level permissions set on the
    ///          mailbox.</p>
    public let permissionValues: [PermissionType]?

    public init (
        entityId: String? = nil,
        granteeId: String? = nil,
        organizationId: String? = nil,
        permissionValues: [PermissionType]? = nil
    )
    {
        self.entityId = entityId
        self.granteeId = granteeId
        self.organizationId = organizationId
        self.permissionValues = permissionValues
    }
}

extension PutMailboxPermissionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutMailboxPermissionsInput(entityId: \(String(describing: entityId)), granteeId: \(String(describing: granteeId)), organizationId: \(String(describing: organizationId)), permissionValues: \(String(describing: permissionValues)))"}
}