// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteAliasInput: Equatable {
    /// <p>The alias to be deleted. The alias name must begin with <code>alias/</code> followed by
    ///       the alias name, such as <code>alias/ExampleAlias</code>.</p>
    public let aliasName: String?

    public init (
        aliasName: String? = nil
    )
    {
        self.aliasName = aliasName
    }
}

extension DeleteAliasInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteAliasInput(aliasName: \(String(describing: aliasName)))"}
}