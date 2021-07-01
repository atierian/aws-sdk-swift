// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ModifyBackupAttributesOutputResponse: Equatable {
    /// <p>Contains information about a backup of an AWS CloudHSM cluster. All backup objects
    ///       contain the <code>BackupId</code>, <code>BackupState</code>, <code>ClusterId</code>, and
    ///         <code>CreateTimestamp</code> parameters. Backups that were copied into a destination region
    ///       additionally contain the <code>CopyTimestamp</code>, <code>SourceBackup</code>,
    ///         <code>SourceCluster</code>, and <code>SourceRegion</code> parameters. A backup that is
    ///       pending deletion will include the <code>DeleteTimestamp</code> parameter.</p>
    public let backup: Backup?

    public init (
        backup: Backup? = nil
    )
    {
        self.backup = backup
    }
}

extension ModifyBackupAttributesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModifyBackupAttributesOutputResponse(backup: \(String(describing: backup)))"}
}