// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the parameters for GetPipelineDefinition.</p>
public struct GetPipelineDefinitionInput: Equatable {
    /// <p>The ID of the pipeline.</p>
    public let pipelineId: String?
    /// <p>The version of the pipeline definition to retrieve. Set this parameter to <code>latest</code> (default)
    ///             to use the last definition saved to the pipeline or <code>active</code> to use the last definition
    ///             that was activated.</p>
    public let version: String?

    public init (
        pipelineId: String? = nil,
        version: String? = nil
    )
    {
        self.pipelineId = pipelineId
        self.version = version
    }
}

extension GetPipelineDefinitionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetPipelineDefinitionInput(pipelineId: \(String(describing: pipelineId)), version: \(String(describing: version)))"}
}