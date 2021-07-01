// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Request to filter Source Servers list.</p>
public struct DescribeSourceServersRequestFilters: Equatable {
    /// <p>Request to filter Source Servers list by archived.</p>
    public let isArchived: Bool?
    /// <p>Request to filter Source Servers list by Source Server ID.</p>
    public let sourceServerIDs: [String]?

    public init (
        isArchived: Bool? = nil,
        sourceServerIDs: [String]? = nil
    )
    {
        self.isArchived = isArchived
        self.sourceServerIDs = sourceServerIDs
    }
}

extension DescribeSourceServersRequestFilters: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeSourceServersRequestFilters(isArchived: \(String(describing: isArchived)), sourceServerIDs: \(String(describing: sourceServerIDs)))"}
}