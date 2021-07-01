// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchCreateVariableOutputResponse: Equatable {
    /// <p>Provides the errors for the <code>BatchCreateVariable</code> request.</p>
    public let errors: [BatchCreateVariableError]?

    public init (
        errors: [BatchCreateVariableError]? = nil
    )
    {
        self.errors = errors
    }
}

extension BatchCreateVariableOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchCreateVariableOutputResponse(errors: \(String(describing: errors)))"}
}