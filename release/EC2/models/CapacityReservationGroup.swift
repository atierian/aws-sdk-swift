// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a resource group to which a Capacity Reservation has been added.</p>
public struct CapacityReservationGroup: Equatable {
    /// <p>The ARN of the resource group.</p>
    public let groupArn: String?
    /// <p>The ID of the AWS account that owns the resource group.</p>
    public let ownerId: String?

    public init (
        groupArn: String? = nil,
        ownerId: String? = nil
    )
    {
        self.groupArn = groupArn
        self.ownerId = ownerId
    }
}

extension CapacityReservationGroup: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CapacityReservationGroup(groupArn: \(String(describing: groupArn)), ownerId: \(String(describing: ownerId)))"}
}