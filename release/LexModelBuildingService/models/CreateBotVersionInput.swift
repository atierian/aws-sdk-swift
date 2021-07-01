// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateBotVersionInput: Equatable {
    /// <p>Identifies a specific revision of the <code>$LATEST</code> version
    ///       of the bot. If you specify a checksum and the <code>$LATEST</code> version
    ///       of the bot has a different checksum, a
    ///         <code>PreconditionFailedException</code> exception is returned and Amazon Lex
    ///       doesn't publish a new version. If you don't specify a checksum, Amazon Lex
    ///       publishes the <code>$LATEST</code> version.</p>
    public let checksum: String?
    /// <p>The name of the bot that you want to create a new version of. The
    ///       name is case sensitive. </p>
    public let name: String?

    public init (
        checksum: String? = nil,
        name: String? = nil
    )
    {
        self.checksum = checksum
        self.name = name
    }
}

extension CreateBotVersionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateBotVersionInput(checksum: \(String(describing: checksum)), name: \(String(describing: name)))"}
}