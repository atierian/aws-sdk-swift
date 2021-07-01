// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Deletes a conditional forwarder.</p>
public struct DeleteConditionalForwarderInput: Equatable {
    /// <p>The directory ID for which you are deleting the conditional forwarder.</p>
    public let directoryId: String?
    /// <p>The fully qualified domain name (FQDN) of the remote domain with which you are deleting the conditional forwarder.</p>
    public let remoteDomainName: String?

    public init (
        directoryId: String? = nil,
        remoteDomainName: String? = nil
    )
    {
        self.directoryId = directoryId
        self.remoteDomainName = remoteDomainName
    }
}

extension DeleteConditionalForwarderInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteConditionalForwarderInput(directoryId: \(String(describing: directoryId)), remoteDomainName: \(String(describing: remoteDomainName)))"}
}