// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeGroupInput: Equatable {
    /// <p>The identifier for the group to be described.</p>
    public let groupId: String?
    /// <p>The identifier for the organization under which the group exists.</p>
    public let organizationId: String?

    public init (
        groupId: String? = nil,
        organizationId: String? = nil
    )
    {
        self.groupId = groupId
        self.organizationId = organizationId
    }
}

extension DescribeGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeGroupInput(groupId: \(String(describing: groupId)), organizationId: \(String(describing: organizationId)))"}
}