// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An instance type configuration for each instance type in an instance fleet, which
///          determines the EC2 instances Amazon EMR attempts to provision to fulfill On-Demand and Spot
///          target capacities. There can be a maximum of five instance type configurations in a
///          fleet.</p>
///          <note>
///             <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and
///             later, excluding 5.0.x versions.</p>
///          </note>
public struct InstanceTypeConfig: Equatable {
    /// <p>The bid price for each EC2 Spot Instance type as defined by <code>InstanceType</code>.
    ///          Expressed in USD. If neither <code>BidPrice</code> nor
    ///             <code>BidPriceAsPercentageOfOnDemandPrice</code> is provided,
    ///             <code>BidPriceAsPercentageOfOnDemandPrice</code> defaults to 100%. </p>
    public let bidPrice: String?
    /// <p>The bid price, as a percentage of On-Demand price, for each EC2 Spot Instance as defined
    ///          by <code>InstanceType</code>. Expressed as a number (for example, 20 specifies 20%). If
    ///          neither <code>BidPrice</code> nor <code>BidPriceAsPercentageOfOnDemandPrice</code> is
    ///          provided, <code>BidPriceAsPercentageOfOnDemandPrice</code> defaults to 100%.</p>
    public let bidPriceAsPercentageOfOnDemandPrice: Double?
    /// <p>A configuration classification that applies when provisioning cluster instances, which
    ///          can include configurations for applications and software that run on the cluster.</p>
    public let configurations: [Configuration]?
    /// <p>The configuration of Amazon Elastic Block Storage (Amazon EBS) attached to each instance
    ///          as defined by <code>InstanceType</code>. </p>
    public let ebsConfiguration: EbsConfiguration?
    /// <p>An EC2 instance type, such as <code>m3.xlarge</code>. </p>
    public let instanceType: String?
    /// <p>The number of units that a provisioned instance of this type provides toward fulfilling
    ///          the target capacities defined in <a>InstanceFleetConfig</a>. This value is 1 for
    ///          a master instance fleet, and must be 1 or greater for core and task instance fleets.
    ///          Defaults to 1 if not specified. </p>
    public let weightedCapacity: Int?

    public init (
        bidPrice: String? = nil,
        bidPriceAsPercentageOfOnDemandPrice: Double? = nil,
        configurations: [Configuration]? = nil,
        ebsConfiguration: EbsConfiguration? = nil,
        instanceType: String? = nil,
        weightedCapacity: Int? = nil
    )
    {
        self.bidPrice = bidPrice
        self.bidPriceAsPercentageOfOnDemandPrice = bidPriceAsPercentageOfOnDemandPrice
        self.configurations = configurations
        self.ebsConfiguration = ebsConfiguration
        self.instanceType = instanceType
        self.weightedCapacity = weightedCapacity
    }
}

extension InstanceTypeConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InstanceTypeConfig(bidPrice: \(String(describing: bidPrice)), bidPriceAsPercentageOfOnDemandPrice: \(String(describing: bidPriceAsPercentageOfOnDemandPrice)), configurations: \(String(describing: configurations)), ebsConfiguration: \(String(describing: ebsConfiguration)), instanceType: \(String(describing: instanceType)), weightedCapacity: \(String(describing: weightedCapacity)))"}
}