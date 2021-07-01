// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateDataSourcePermissionsInput: Equatable {
    /// <p>The AWS account ID.</p>
    public let awsAccountId: String?
    /// <p>The ID of the data source. This ID is unique per AWS Region for each AWS account. </p>
    public let dataSourceId: String?
    /// <p>A list of resource permissions that you want to grant on the data source.</p>
    public let grantPermissions: [ResourcePermission]?
    /// <p>A list of resource permissions that you want to revoke on the data source.</p>
    public let revokePermissions: [ResourcePermission]?

    public init (
        awsAccountId: String? = nil,
        dataSourceId: String? = nil,
        grantPermissions: [ResourcePermission]? = nil,
        revokePermissions: [ResourcePermission]? = nil
    )
    {
        self.awsAccountId = awsAccountId
        self.dataSourceId = dataSourceId
        self.grantPermissions = grantPermissions
        self.revokePermissions = revokePermissions
    }
}

extension UpdateDataSourcePermissionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateDataSourcePermissionsInput(awsAccountId: \(String(describing: awsAccountId)), dataSourceId: \(String(describing: dataSourceId)), grantPermissions: \(String(describing: grantPermissions)), revokePermissions: \(String(describing: revokePermissions)))"}
}