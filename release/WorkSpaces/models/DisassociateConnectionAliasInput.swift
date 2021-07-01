// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateConnectionAliasInput: Equatable {
    /// <p>The identifier of the connection alias to disassociate.</p>
    public let aliasId: String?

    public init (
        aliasId: String? = nil
    )
    {
        self.aliasId = aliasId
    }
}

extension DisassociateConnectionAliasInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateConnectionAliasInput(aliasId: \(String(describing: aliasId)))"}
}