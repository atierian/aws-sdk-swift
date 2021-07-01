// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateDefaultSubnetOutputResponse: Equatable {
    /// <p>Information about the subnet.</p>
    public let subnet: Subnet?

    public init (
        subnet: Subnet? = nil
    )
    {
        self.subnet = subnet
    }
}

extension CreateDefaultSubnetOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDefaultSubnetOutputResponse(subnet: \(String(describing: subnet)))"}
}