// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about the destination of the next component in the network path.</p>
public struct NetworkPathComponentDetails: Equatable {
    /// <p>The IP addresses of the destination.</p>
    public let address: [String]?
    /// <p>A list of port ranges for the destination.</p>
    public let portRanges: [PortRange]?

    public init (
        address: [String]? = nil,
        portRanges: [PortRange]? = nil
    )
    {
        self.address = address
        self.portRanges = portRanges
    }
}

extension NetworkPathComponentDetails: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NetworkPathComponentDetails(address: \(String(describing: address)), portRanges: \(String(describing: portRanges)))"}
}