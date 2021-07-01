// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains details about a lambda function that successfully terminated during an
///       execution.</p>
public struct LambdaFunctionSucceededEventDetails: Equatable {
    /// <p>The JSON data output by the lambda function. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>
    public let output: String?
    /// <p>Contains details about the output of an execution history event.</p>
    public let outputDetails: HistoryEventExecutionDataDetails?

    public init (
        output: String? = nil,
        outputDetails: HistoryEventExecutionDataDetails? = nil
    )
    {
        self.output = output
        self.outputDetails = outputDetails
    }
}

extension LambdaFunctionSucceededEventDetails: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LambdaFunctionSucceededEventDetails(output: \(String(describing: output)), outputDetails: \(String(describing: outputDetails)))"}
}