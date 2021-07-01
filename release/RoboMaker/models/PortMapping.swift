// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An object representing a port mapping.</p>
public struct PortMapping: Equatable {
    /// <p>The port number on the application.</p>
    public let applicationPort: Int
    /// <p>A Boolean indicating whether to enable this port mapping on public IP.</p>
    public let enableOnPublicIp: Bool
    /// <p>The port number on the simulation job instance to use as a remote connection point.
    ///          </p>
    public let jobPort: Int

    public init (
        applicationPort: Int = 0,
        enableOnPublicIp: Bool = false,
        jobPort: Int = 0
    )
    {
        self.applicationPort = applicationPort
        self.enableOnPublicIp = enableOnPublicIp
        self.jobPort = jobPort
    }
}

extension PortMapping: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PortMapping(applicationPort: \(String(describing: applicationPort)), enableOnPublicIp: \(String(describing: enableOnPublicIp)), jobPort: \(String(describing: jobPort)))"}
}