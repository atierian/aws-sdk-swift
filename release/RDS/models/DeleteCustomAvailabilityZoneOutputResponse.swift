// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteCustomAvailabilityZoneOutputResponse: Equatable {
    /// <p>A custom Availability Zone (AZ) is an on-premises AZ that is integrated with a VMware vSphere cluster.</p>
    ///         <p>For more information about RDS on VMware, see the
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html">
    ///                 RDS on VMware User Guide.</a>
    ///          </p>
    public let customAvailabilityZone: CustomAvailabilityZone?

    public init (
        customAvailabilityZone: CustomAvailabilityZone? = nil
    )
    {
        self.customAvailabilityZone = customAvailabilityZone
    }
}

extension DeleteCustomAvailabilityZoneOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteCustomAvailabilityZoneOutputResponse(customAvailabilityZone: \(String(describing: customAvailabilityZone)))"}
}