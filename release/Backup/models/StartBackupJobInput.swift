// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartBackupJobInput: Equatable {
    /// <p>Specifies the backup option for a selected resource. This option is only available for
    ///          Windows VSS backup jobs.</p>
    ///          <p>Valid values: Set to <code>"WindowsVSS”:“enabled"</code> to enable WindowsVSS backup
    ///          option and create a VSS Windows backup. Set to “WindowsVSS”:”disabled” to create a regular
    ///          backup. The WindowsVSS option is not enabled by default.</p>
    public let backupOptions: [String:String]?
    /// <p>The name of a logical container where backups are stored. Backup vaults are identified
    ///          by names that are unique to the account used to create them and the AWS Region where they
    ///          are created. They consist of lowercase letters, numbers, and hyphens.</p>
    public let backupVaultName: String?
    /// <p>A value in minutes during which a successfully started backup must complete, or else AWS
    ///          Backup will cancel the job. This value is optional. This value begins counting down from
    ///          when the backup was scheduled. It does not add additional time for
    ///             <code>StartWindowMinutes</code>, or if the backup started later than scheduled.</p>
    public let completeWindowMinutes: Int?
    /// <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    ///             <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    public let iamRoleArn: String?
    /// <p>A customer chosen string that can be used to distinguish between calls to
    ///             <code>StartBackupJob</code>.</p>
    public let idempotencyToken: String?
    /// <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    ///          it expires. AWS Backup will transition and expire backups automatically according to the
    ///          lifecycle that you define. </p>
    ///          <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    ///          days. Therefore, the “expire after days” setting must be 90 days greater than the
    ///          “transition to cold after days” setting. The “transition to cold after days” setting cannot
    ///          be changed after a backup has been transitioned to cold. </p>
    ///          <p>Only Amazon EFS file system backups can be transitioned to cold storage.</p>
    public let lifecycle: Lifecycle?
    /// <p>To help organize your resources, you can assign your own metadata to the resources that
    ///          you create. Each tag is a key-value pair.</p>
    public let recoveryPointTags: [String:String]?
    /// <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    ///          depends on the resource type.</p>
    public let resourceArn: String?
    /// <p>A value in minutes after a backup is scheduled before a job will be canceled if it
    ///          doesn't start successfully. This value is optional, and the default is 8 hours.</p>
    public let startWindowMinutes: Int?

    public init (
        backupOptions: [String:String]? = nil,
        backupVaultName: String? = nil,
        completeWindowMinutes: Int? = nil,
        iamRoleArn: String? = nil,
        idempotencyToken: String? = nil,
        lifecycle: Lifecycle? = nil,
        recoveryPointTags: [String:String]? = nil,
        resourceArn: String? = nil,
        startWindowMinutes: Int? = nil
    )
    {
        self.backupOptions = backupOptions
        self.backupVaultName = backupVaultName
        self.completeWindowMinutes = completeWindowMinutes
        self.iamRoleArn = iamRoleArn
        self.idempotencyToken = idempotencyToken
        self.lifecycle = lifecycle
        self.recoveryPointTags = recoveryPointTags
        self.resourceArn = resourceArn
        self.startWindowMinutes = startWindowMinutes
    }
}

extension StartBackupJobInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartBackupJobInput(backupOptions: \(String(describing: backupOptions)), backupVaultName: \(String(describing: backupVaultName)), completeWindowMinutes: \(String(describing: completeWindowMinutes)), iamRoleArn: \(String(describing: iamRoleArn)), idempotencyToken: \(String(describing: idempotencyToken)), lifecycle: \(String(describing: lifecycle)), recoveryPointTags: \(String(describing: recoveryPointTags)), resourceArn: \(String(describing: resourceArn)), startWindowMinutes: \(String(describing: startWindowMinutes)))"}
}