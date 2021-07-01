// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StopPipelineExecutionInput: Equatable {
    /// <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    ///          operation. An idempotent operation completes no more than one time.</p>
    public var clientRequestToken: String?
    /// <p>The Amazon Resource Name (ARN) of the pipeline execution.</p>
    public let pipelineExecutionArn: String?

    public init (
        clientRequestToken: String? = nil,
        pipelineExecutionArn: String? = nil
    )
    {
        self.clientRequestToken = clientRequestToken
        self.pipelineExecutionArn = pipelineExecutionArn
    }
}

extension StopPipelineExecutionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StopPipelineExecutionInput(clientRequestToken: \(String(describing: clientRequestToken)), pipelineExecutionArn: \(String(describing: pipelineExecutionArn)))"}
}