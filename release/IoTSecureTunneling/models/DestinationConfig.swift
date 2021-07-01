// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The destination configuration.</p>
public struct DestinationConfig: Equatable {
    /// <p>A list of service names that identity the target application. The AWS IoT client running on the destination device reads
    /// 			this value and uses it to look up a port or an IP address and a port. The AWS IoT client
    /// 			instantiates the local proxy which uses this information to connect to the destination
    /// 			application.</p>
    public let services: [String]?
    /// <p>The name of the IoT thing to which you want to connect.</p>
    public let thingName: String?

    public init (
        services: [String]? = nil,
        thingName: String? = nil
    )
    {
        self.services = services
        self.thingName = thingName
    }
}

extension DestinationConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DestinationConfig(services: \(String(describing: services)), thingName: \(String(describing: thingName)))"}
}