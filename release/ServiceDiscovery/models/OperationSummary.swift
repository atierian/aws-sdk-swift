// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A complex type that contains information about an operation that matches the criteria that you specified in a
///     <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html">ListOperations</a>
///    request.</p>
public struct OperationSummary: Equatable {
    /// <p>The ID for an operation.</p>
    public let id: String?
    /// <p>The status of the operation. Values include the following:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <b>SUBMITTED</b>: This is the initial state immediately after you submit a
    ///      request.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>PENDING</b>: AWS Cloud Map is performing the operation.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>SUCCESS</b>: The operation succeeded.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>FAIL</b>: The operation failed. For the failure reason, see
    ///       <code>ErrorMessage</code>.</p>
    ///             </li>
    ///          </ul>
    public let status: OperationStatus?

    public init (
        id: String? = nil,
        status: OperationStatus? = nil
    )
    {
        self.id = id
        self.status = status
    }
}

extension OperationSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OperationSummary(id: \(String(describing: id)), status: \(String(describing: status)))"}
}