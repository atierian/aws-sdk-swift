// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the self-service permissions for a directory. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html">Enable Self-Service WorkSpace Management Capabilities for Your Users</a>.</p>
public struct SelfservicePermissions: Equatable {
    /// <p>Specifies whether users can change the compute type (bundle) for their WorkSpace.</p>
    public let changeComputeType: ReconnectEnum?
    /// <p>Specifies whether users can increase the volume size of the drives on their
    ///          WorkSpace.</p>
    public let increaseVolumeSize: ReconnectEnum?
    /// <p>Specifies whether users can rebuild the operating system of a WorkSpace to its original
    ///          state.</p>
    public let rebuildWorkspace: ReconnectEnum?
    /// <p>Specifies whether users can restart their WorkSpace.</p>
    public let restartWorkspace: ReconnectEnum?
    /// <p>Specifies whether users can switch the running mode of their WorkSpace.</p>
    public let switchRunningMode: ReconnectEnum?

    public init (
        changeComputeType: ReconnectEnum? = nil,
        increaseVolumeSize: ReconnectEnum? = nil,
        rebuildWorkspace: ReconnectEnum? = nil,
        restartWorkspace: ReconnectEnum? = nil,
        switchRunningMode: ReconnectEnum? = nil
    )
    {
        self.changeComputeType = changeComputeType
        self.increaseVolumeSize = increaseVolumeSize
        self.rebuildWorkspace = rebuildWorkspace
        self.restartWorkspace = restartWorkspace
        self.switchRunningMode = switchRunningMode
    }
}

extension SelfservicePermissions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SelfservicePermissions(changeComputeType: \(String(describing: changeComputeType)), increaseVolumeSize: \(String(describing: increaseVolumeSize)), rebuildWorkspace: \(String(describing: rebuildWorkspace)), restartWorkspace: \(String(describing: restartWorkspace)), switchRunningMode: \(String(describing: switchRunningMode)))"}
}