// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the parameters for ConfigureHealthCheck.</p>
public struct ConfigureHealthCheckInput: Equatable {
    /// <p>The configuration information.</p>
    public let healthCheck: HealthCheck?
    /// <p>The name of the load balancer.</p>
    public let loadBalancerName: String?

    public init (
        healthCheck: HealthCheck? = nil,
        loadBalancerName: String? = nil
    )
    {
        self.healthCheck = healthCheck
        self.loadBalancerName = loadBalancerName
    }
}

extension ConfigureHealthCheckInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ConfigureHealthCheckInput(healthCheck: \(String(describing: healthCheck)), loadBalancerName: \(String(describing: loadBalancerName)))"}
}