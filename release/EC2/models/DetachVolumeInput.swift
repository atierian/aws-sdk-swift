// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DetachVolumeInput: Equatable {
    /// <p>The device name.</p>
    public let device: String?
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>Forces detachment if the previous detachment attempt did not occur cleanly (for example,
    ///       logging into an instance, unmounting the volume, and detaching normally). This option can lead
    ///       to data loss or a corrupted file system. Use this option only as a last resort to detach a
    ///       volume from a failed instance. The instance won't have an opportunity to flush file system
    ///       caches or file system metadata. If you use this option, you must perform file system check and
    ///       repair procedures.</p>
    public let force: Bool
    /// <p>The ID of the instance. If you are detaching a Multi-Attach enabled volume, you must specify an instance ID.</p>
    public let instanceId: String?
    /// <p>The ID of the volume.</p>
    public let volumeId: String?

    public init (
        device: String? = nil,
        dryRun: Bool = false,
        force: Bool = false,
        instanceId: String? = nil,
        volumeId: String? = nil
    )
    {
        self.device = device
        self.dryRun = dryRun
        self.force = force
        self.instanceId = instanceId
        self.volumeId = volumeId
    }
}

extension DetachVolumeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DetachVolumeInput(device: \(String(describing: device)), dryRun: \(String(describing: dryRun)), force: \(String(describing: force)), instanceId: \(String(describing: instanceId)), volumeId: \(String(describing: volumeId)))"}
}