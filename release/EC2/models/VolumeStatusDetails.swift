// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a volume status.</p>
public struct VolumeStatusDetails: Equatable {
    /// <p>The name of the volume status.</p>
    public let name: VolumeStatusName?
    /// <p>The intended status of the volume status.</p>
    public let status: String?

    public init (
        name: VolumeStatusName? = nil,
        status: String? = nil
    )
    {
        self.name = name
        self.status = status
    }
}

extension VolumeStatusDetails: CustomDebugStringConvertible {
    public var debugDescription: String {
        "VolumeStatusDetails(name: \(String(describing: name)), status: \(String(describing: status)))"}
}