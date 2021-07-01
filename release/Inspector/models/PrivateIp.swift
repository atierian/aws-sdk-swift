// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about a private IP address associated with a network interface. This
///          data type is used as a response element in the <a>DescribeFindings</a>
///          action.</p>
public struct PrivateIp: Equatable {
    /// <p>The DNS name of the private IP address.</p>
    public let privateDnsName: String?
    /// <p>The full IP address of the network inteface.</p>
    public let privateIpAddress: String?

    public init (
        privateDnsName: String? = nil,
        privateIpAddress: String? = nil
    )
    {
        self.privateDnsName = privateDnsName
        self.privateIpAddress = privateIpAddress
    }
}

extension PrivateIp: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PrivateIp(privateDnsName: \(String(describing: privateDnsName)), privateIpAddress: \(String(describing: privateIpAddress)))"}
}