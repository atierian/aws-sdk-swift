// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RemoveFlowSourceInput: Equatable {
    /// The flow that you want to remove a source from.
    public let flowArn: String?
    /// The ARN of the source that you want to remove.
    public let sourceArn: String?

    public init (
        flowArn: String? = nil,
        sourceArn: String? = nil
    )
    {
        self.flowArn = flowArn
        self.sourceArn = sourceArn
    }
}

extension RemoveFlowSourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RemoveFlowSourceInput(flowArn: \(String(describing: flowArn)), sourceArn: \(String(describing: sourceArn)))"}
}