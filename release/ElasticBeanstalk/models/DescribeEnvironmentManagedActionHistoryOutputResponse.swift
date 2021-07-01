// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A result message containing a list of completed and failed managed actions.</p>
public struct DescribeEnvironmentManagedActionHistoryOutputResponse: Equatable {
    /// <p>A list of completed and failed managed actions.</p>
    public let managedActionHistoryItems: [ManagedActionHistoryItem]?
    /// <p>A pagination token that you pass to <a>DescribeEnvironmentManagedActionHistory</a> to get the next page of
    ///       results.</p>
    public let nextToken: String?

    public init (
        managedActionHistoryItems: [ManagedActionHistoryItem]? = nil,
        nextToken: String? = nil
    )
    {
        self.managedActionHistoryItems = managedActionHistoryItems
        self.nextToken = nextToken
    }
}

extension DescribeEnvironmentManagedActionHistoryOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeEnvironmentManagedActionHistoryOutputResponse(managedActionHistoryItems: \(String(describing: managedActionHistoryItems)), nextToken: \(String(describing: nextToken)))"}
}