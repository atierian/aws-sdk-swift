// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the output of a <code>GetPipelineExecution</code> action.</p>
public struct GetPipelineExecutionOutputResponse: Equatable {
    /// <p>Represents information about the execution of a pipeline.</p>
    public let pipelineExecution: PipelineExecution?

    public init (
        pipelineExecution: PipelineExecution? = nil
    )
    {
        self.pipelineExecution = pipelineExecution
    }
}

extension GetPipelineExecutionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetPipelineExecutionOutputResponse(pipelineExecution: \(String(describing: pipelineExecution)))"}
}