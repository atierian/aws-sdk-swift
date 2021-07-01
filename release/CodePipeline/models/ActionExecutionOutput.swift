// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Output details listed for an action execution, such as the action execution
///             result.</p>
public struct ActionExecutionOutput: Equatable {
    /// <p>Execution result information listed in the output details for an action
    ///             execution.</p>
    public let executionResult: ActionExecutionResult?
    /// <p>Details of output artifacts of the action that correspond to the action
    ///             execution.</p>
    public let outputArtifacts: [ArtifactDetail]?
    /// <p>The outputVariables field shows the key-value pairs that were output as part of that
    ///             execution.</p>
    public let outputVariables: [String:String]?

    public init (
        executionResult: ActionExecutionResult? = nil,
        outputArtifacts: [ArtifactDetail]? = nil,
        outputVariables: [String:String]? = nil
    )
    {
        self.executionResult = executionResult
        self.outputArtifacts = outputArtifacts
        self.outputVariables = outputVariables
    }
}

extension ActionExecutionOutput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ActionExecutionOutput(executionResult: \(String(describing: executionResult)), outputArtifacts: \(String(describing: outputArtifacts)), outputVariables: \(String(describing: outputVariables)))"}
}