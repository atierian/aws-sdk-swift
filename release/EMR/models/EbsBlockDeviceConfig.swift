// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Configuration of requested EBS block device associated with the instance group with
///          count of volumes that will be associated to every instance.</p>
public struct EbsBlockDeviceConfig: Equatable {
    /// <p>EBS volume specifications such as volume type, IOPS, and size (GiB) that will be
    ///          requested for the EBS volume attached to an EC2 instance in the cluster.</p>
    public let volumeSpecification: VolumeSpecification?
    /// <p>Number of EBS volumes with a specific volume configuration that will be associated with
    ///          every instance in the instance group</p>
    public let volumesPerInstance: Int?

    public init (
        volumeSpecification: VolumeSpecification? = nil,
        volumesPerInstance: Int? = nil
    )
    {
        self.volumeSpecification = volumeSpecification
        self.volumesPerInstance = volumesPerInstance
    }
}

extension EbsBlockDeviceConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EbsBlockDeviceConfig(volumeSpecification: \(String(describing: volumeSpecification)), volumesPerInstance: \(String(describing: volumesPerInstance)))"}
}