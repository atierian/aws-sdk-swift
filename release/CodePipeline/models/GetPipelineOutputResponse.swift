// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the output of a <code>GetPipeline</code> action.</p>
public struct GetPipelineOutputResponse: Equatable {
    /// <p>Represents the pipeline metadata information returned as part of the output of a
    ///                 <code>GetPipeline</code> action.</p>
    public let metadata: PipelineMetadata?
    /// <p>Represents the structure of actions and stages to be performed in the pipeline.
    ///         </p>
    public let pipeline: PipelineDeclaration?

    public init (
        metadata: PipelineMetadata? = nil,
        pipeline: PipelineDeclaration? = nil
    )
    {
        self.metadata = metadata
        self.pipeline = pipeline
    }
}

extension GetPipelineOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetPipelineOutputResponse(metadata: \(String(describing: metadata)), pipeline: \(String(describing: pipeline)))"}
}