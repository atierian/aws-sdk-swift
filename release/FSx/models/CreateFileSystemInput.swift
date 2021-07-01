// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The request object used to create a new Amazon FSx file system.</p>
public struct CreateFileSystemInput: Equatable {
    /// <p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
    ///             idempotent creation. This string is automatically filled on your behalf when you use the
    ///             AWS Command Line Interface (AWS CLI) or an AWS SDK.</p>
    public var clientRequestToken: String?
    /// <p>The type of Amazon FSx file system to create, either <code>WINDOWS</code> or <code>LUSTRE</code>.</p>
    public let fileSystemType: FileSystemType?
    /// <p>The ID of the AWS Key Management Service (AWS KMS) key used to encrypt the file system's data
    ///             for Amazon FSx for Windows File Server file systems and Amazon FSx for Lustre <code>PERSISTENT_1</code> file
    ///             systems at rest. In either case, if not specified, the Amazon FSx managed key
    ///             is used. The Amazon FSx for Lustre <code>SCRATCH_1</code> and <code>SCRATCH_2</code> file systems are always encrypted at rest using
    ///             Amazon FSx managed keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a>
    ///             in the <i>AWS Key Management Service API Reference</i>.</p>
    public let kmsKeyId: String?
    /// <p>The Lustre configuration for the file system being created.
    ///             </p>
    public let lustreConfiguration: CreateFileSystemLustreConfiguration?
    /// <p>A list of IDs specifying the security groups to apply to all network interfaces
    ///             created for file system access. This list isn't returned in later requests to
    ///             describe the file system.</p>
    public let securityGroupIds: [String]?
    /// <p>Sets the storage capacity of the file system that you're creating.</p>
    ///         <p>For Lustre file systems:</p>
    ///         <ul>
    ///             <li>
    ///                <p>For <code>SCRATCH_2</code> and <code>PERSISTENT_1 SSD</code> deployment types, valid values are
    ///                 1200 GiB, 2400 GiB, and increments of 2400 GiB.</p>
    ///             </li>
    ///             <li>
    ///                <p>For <code>PERSISTENT HDD</code> file systems, valid values are increments of 6000 GiB for
    ///                 12 MB/s/TiB file systems and increments of 1800 GiB for 40 MB/s/TiB file systems.</p>
    ///             </li>
    ///             <li>
    ///                <p>For <code>SCRATCH_1</code> deployment type, valid values are
    ///                 1200 GiB, 2400 GiB, and increments of 3600 GiB.</p>
    ///             </li>
    ///          </ul>
    ///         <p>For Windows file systems:</p>
    ///         <ul>
    ///             <li>
    ///                <p>If <code>StorageType=SSD</code>, valid values are 32 GiB - 65,536 GiB (64 TiB).</p>
    ///             </li>
    ///             <li>
    ///                <p>If <code>StorageType=HDD</code>, valid values are 2000 GiB - 65,536 GiB (64 TiB).</p>
    ///             </li>
    ///          </ul>
    public let storageCapacity: Int?
    /// <p>Sets the storage type for the file system you're creating.
    ///             Valid values are <code>SSD</code> and <code>HDD</code>.</p>
    ///         <ul>
    ///             <li>
    ///                <p>Set to <code>SSD</code> to use solid state drive storage.
    ///                 SSD is supported on all Windows and Lustre deployment types.</p>
    ///             </li>
    ///             <li>
    ///                <p>Set to <code>HDD</code> to use hard disk drive storage.
    ///                 HDD is supported on <code>SINGLE_AZ_2</code> and <code>MULTI_AZ_1</code> Windows file system deployment types,
    ///                 and on <code>PERSISTENT</code> Lustre file system deployment types.
    ///                 </p>
    ///             </li>
    ///          </ul>
    ///         <p>
    ///             Default value is <code>SSD</code>. For more information, see
    ///             <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/optimize-fsx-costs.html#storage-type-options">
    ///             Storage Type Options</a> in the <i>Amazon FSx for Windows User Guide</i> and
    ///             <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/what-is.html#storage-options">Multiple Storage Options</a>
    ///             in the <i>Amazon FSx for Lustre User Guide</i>.
    ///         </p>
    public let storageType: StorageType?
    /// <p>Specifies the IDs of the subnets that the file system will be accessible from. For Windows <code>MULTI_AZ_1</code>
    ///             file system deployment types, provide exactly two subnet IDs, one for the preferred file server
    ///             and one for the standby file server. You specify one of these subnets as the preferred subnet
    ///             using the <code>WindowsConfiguration > PreferredSubnetID</code> property. For more information,
    ///             see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html">
    ///                 Availability and durability: Single-AZ and Multi-AZ file systems</a>.</p>
    ///         <p>For Windows <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> file system deployment types and Lustre file systems, provide exactly one subnet ID.
    ///            The file server is launched in that subnet's Availability Zone.</p>
    public let subnetIds: [String]?
    /// <p>The tags to apply to the file system being created. The key value of
    ///             the <code>Name</code> tag appears in the console as the file system name.</p>
    public let tags: [Tag]?
    /// <p>The Microsoft Windows configuration for the file system being created.
    ///             </p>
    public let windowsConfiguration: CreateFileSystemWindowsConfiguration?

    public init (
        clientRequestToken: String? = nil,
        fileSystemType: FileSystemType? = nil,
        kmsKeyId: String? = nil,
        lustreConfiguration: CreateFileSystemLustreConfiguration? = nil,
        securityGroupIds: [String]? = nil,
        storageCapacity: Int? = nil,
        storageType: StorageType? = nil,
        subnetIds: [String]? = nil,
        tags: [Tag]? = nil,
        windowsConfiguration: CreateFileSystemWindowsConfiguration? = nil
    )
    {
        self.clientRequestToken = clientRequestToken
        self.fileSystemType = fileSystemType
        self.kmsKeyId = kmsKeyId
        self.lustreConfiguration = lustreConfiguration
        self.securityGroupIds = securityGroupIds
        self.storageCapacity = storageCapacity
        self.storageType = storageType
        self.subnetIds = subnetIds
        self.tags = tags
        self.windowsConfiguration = windowsConfiguration
    }
}

extension CreateFileSystemInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateFileSystemInput(clientRequestToken: \(String(describing: clientRequestToken)), fileSystemType: \(String(describing: fileSystemType)), kmsKeyId: \(String(describing: kmsKeyId)), lustreConfiguration: \(String(describing: lustreConfiguration)), securityGroupIds: \(String(describing: securityGroupIds)), storageCapacity: \(String(describing: storageCapacity)), storageType: \(String(describing: storageType)), subnetIds: \(String(describing: subnetIds)), tags: \(String(describing: tags)), windowsConfiguration: \(String(describing: windowsConfiguration)))"}
}