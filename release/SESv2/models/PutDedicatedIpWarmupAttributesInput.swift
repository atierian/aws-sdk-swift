// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A request to change the warm-up attributes for a dedicated IP address. This operation
///             is useful when you want to resume the warm-up process for an existing IP address.</p>
public struct PutDedicatedIpWarmupAttributesInput: Equatable {
    /// <p>The dedicated IP address that you want to update the warm-up attributes for.</p>
    public let ip: String?
    /// <p>The warm-up percentage that you want to associate with the dedicated IP
    ///             address.</p>
    public let warmupPercentage: Int?

    public init (
        ip: String? = nil,
        warmupPercentage: Int? = nil
    )
    {
        self.ip = ip
        self.warmupPercentage = warmupPercentage
    }
}

extension PutDedicatedIpWarmupAttributesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutDedicatedIpWarmupAttributesInput(ip: \(String(describing: ip)), warmupPercentage: \(String(describing: warmupPercentage)))"}
}