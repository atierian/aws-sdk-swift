// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteConnectionInput: Equatable {
    /// <p>The ID of the connection.</p>
    public let connectionId: String?
    /// <p>The ID of the global network.</p>
    public let globalNetworkId: String?

    public init (
        connectionId: String? = nil,
        globalNetworkId: String? = nil
    )
    {
        self.connectionId = connectionId
        self.globalNetworkId = globalNetworkId
    }
}

extension DeleteConnectionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteConnectionInput(connectionId: \(String(describing: connectionId)), globalNetworkId: \(String(describing: globalNetworkId)))"}
}