// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The launch specification for Spot Instances in the instance fleet, which determines the
///          defined duration, provisioning timeout behavior, and allocation strategy.</p>
///          <note>
///             <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
///             later, excluding 5.0.x versions. Spot Instance allocation strategy is available in
///             Amazon EMR version 5.12.1 and later.</p>
///          </note>
public struct SpotProvisioningSpecification: Equatable {
    /// <p> Specifies the strategy to use in launching Spot Instance fleets. Currently, the only
    ///          option is capacity-optimized (the default), which launches instances from Spot Instance
    ///          pools with optimal capacity for the number of instances that are launching. </p>
    public let allocationStrategy: SpotProvisioningAllocationStrategy?
    /// <p>The defined duration for Spot Instances (also known as Spot blocks) in minutes. When
    ///          specified, the Spot Instance does not terminate before the defined duration expires, and
    ///          defined duration pricing for Spot Instances applies. Valid values are 60, 120, 180, 240,
    ///          300, or 360. The duration period starts as soon as a Spot Instance receives its instance
    ///          ID. At the end of the duration, Amazon EC2 marks the Spot Instance for termination and
    ///          provides a Spot Instance termination notice, which gives the instance a two-minute warning
    ///          before it terminates. </p>
    public let blockDurationMinutes: Int?
    /// <p>The action to take when <code>TargetSpotCapacity</code> has not been fulfilled when the
    ///             <code>TimeoutDurationMinutes</code> has expired; that is, when all Spot Instances could
    ///          not be provisioned within the Spot provisioning timeout. Valid values are
    ///             <code>TERMINATE_CLUSTER</code> and <code>SWITCH_TO_ON_DEMAND</code>. SWITCH_TO_ON_DEMAND
    ///          specifies that if no Spot Instances are available, On-Demand Instances should be
    ///          provisioned to fulfill any remaining Spot capacity.</p>
    public let timeoutAction: SpotProvisioningTimeoutAction?
    /// <p>The spot provisioning timeout period in minutes. If Spot Instances are not provisioned
    ///          within this time period, the <code>TimeOutAction</code> is taken. Minimum value is 5 and
    ///          maximum value is 1440. The timeout applies only during initial provisioning, when the
    ///          cluster is first created.</p>
    public let timeoutDurationMinutes: Int?

    public init (
        allocationStrategy: SpotProvisioningAllocationStrategy? = nil,
        blockDurationMinutes: Int? = nil,
        timeoutAction: SpotProvisioningTimeoutAction? = nil,
        timeoutDurationMinutes: Int? = nil
    )
    {
        self.allocationStrategy = allocationStrategy
        self.blockDurationMinutes = blockDurationMinutes
        self.timeoutAction = timeoutAction
        self.timeoutDurationMinutes = timeoutDurationMinutes
    }
}

extension SpotProvisioningSpecification: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SpotProvisioningSpecification(allocationStrategy: \(String(describing: allocationStrategy)), blockDurationMinutes: \(String(describing: blockDurationMinutes)), timeoutAction: \(String(describing: timeoutAction)), timeoutDurationMinutes: \(String(describing: timeoutDurationMinutes)))"}
}