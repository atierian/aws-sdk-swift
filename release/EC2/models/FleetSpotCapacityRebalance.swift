// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The strategy to use when Amazon EC2 emits a signal that your Spot Instance is at an
///          elevated risk of being interrupted.</p>
public struct FleetSpotCapacityRebalance: Equatable {
    /// <p>To allow EC2 Fleet to launch a replacement Spot Instance when an instance rebalance
    ///          notification is emitted for an existing Spot Instance in the fleet, specify
    ///             <code>launch</code>. Only available for fleets of type <code>maintain</code>.</p>
    ///          <note>
    ///             <p>When a replacement instance is launched, the instance marked for rebalance is not
    ///             automatically terminated. You can terminate it, or you can leave it running. You are charged for both instances while they are running.</p>
    ///          </note>
    public let replacementStrategy: FleetReplacementStrategy?

    public init (
        replacementStrategy: FleetReplacementStrategy? = nil
    )
    {
        self.replacementStrategy = replacementStrategy
    }
}

extension FleetSpotCapacityRebalance: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FleetSpotCapacityRebalance(replacementStrategy: \(String(describing: replacementStrategy)))"}
}