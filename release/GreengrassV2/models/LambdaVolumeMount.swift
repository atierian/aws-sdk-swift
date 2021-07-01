// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about a volume that Linux processes in a container can access. When
///       you define a volume, the AWS IoT Greengrass Core software mounts the source files to the destination inside the
///       container.</p>
public struct LambdaVolumeMount: Equatable {
    /// <p>Whether or not to add the AWS IoT Greengrass user group as an owner of the volume.</p>
    ///          <p>Default: <code>false</code>
    ///          </p>
    public let addGroupOwner: Bool
    /// <p>The path to the logical volume in the file system.</p>
    public let destinationPath: String?
    /// <p>The permission to access the volume: read/only (<code>ro</code>) or read/write
    ///         (<code>rw</code>).</p>
    ///          <p>Default: <code>ro</code>
    ///          </p>
    public let permission: LambdaFilesystemPermission?
    /// <p>The path to the physical volume in the file system.</p>
    public let sourcePath: String?

    public init (
        addGroupOwner: Bool = false,
        destinationPath: String? = nil,
        permission: LambdaFilesystemPermission? = nil,
        sourcePath: String? = nil
    )
    {
        self.addGroupOwner = addGroupOwner
        self.destinationPath = destinationPath
        self.permission = permission
        self.sourcePath = sourcePath
    }
}

extension LambdaVolumeMount: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LambdaVolumeMount(addGroupOwner: \(String(describing: addGroupOwner)), destinationPath: \(String(describing: destinationPath)), permission: \(String(describing: permission)), sourcePath: \(String(describing: sourcePath)))"}
}