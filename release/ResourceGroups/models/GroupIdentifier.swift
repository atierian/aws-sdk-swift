// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The unique identifiers for a resource group.</p>
public struct GroupIdentifier: Equatable {
    /// <p>The ARN of the resource group.</p>
    public let groupArn: String?
    /// <p>The name of the resource group.</p>
    public let groupName: String?

    public init (
        groupArn: String? = nil,
        groupName: String? = nil
    )
    {
        self.groupArn = groupArn
        self.groupName = groupName
    }
}

extension GroupIdentifier: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GroupIdentifier(groupArn: \(String(describing: groupArn)), groupName: \(String(describing: groupName)))"}
}