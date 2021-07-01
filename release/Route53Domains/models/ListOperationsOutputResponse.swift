// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The ListOperations response includes the following elements.</p>
public struct ListOperationsOutputResponse: Equatable {
    /// <p>If there are more operations than you specified for <code>MaxItems</code> in the request, submit another
    /// 			request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>
    public let nextPageMarker: String?
    /// <p>Lists summaries of the operations.</p>
    public let operations: [OperationSummary]?

    public init (
        nextPageMarker: String? = nil,
        operations: [OperationSummary]? = nil
    )
    {
        self.nextPageMarker = nextPageMarker
        self.operations = operations
    }
}

extension ListOperationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListOperationsOutputResponse(nextPageMarker: \(String(describing: nextPageMarker)), operations: \(String(describing: operations)))"}
}