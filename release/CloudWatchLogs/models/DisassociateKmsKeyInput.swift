// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateKmsKeyInput: Equatable {
    /// <p>The name of the log group.</p>
    public let logGroupName: String?

    public init (
        logGroupName: String? = nil
    )
    {
        self.logGroupName = logGroupName
    }
}

extension DisassociateKmsKeyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateKmsKeyInput(logGroupName: \(String(describing: logGroupName)))"}
}