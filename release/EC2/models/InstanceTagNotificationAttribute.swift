// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the registered tag keys for the current Region.</p>
public struct InstanceTagNotificationAttribute: Equatable {
    /// <p>Indicates wheter all tag keys in the current Region are registered to appear in scheduled event notifications.
    ///       	<code>true</code> indicates that all tag keys in the current Region are registered.</p>
    public let includeAllTagsOfInstance: Bool
    /// <p>The registered tag keys.</p>
    public let instanceTagKeys: [String]?

    public init (
        includeAllTagsOfInstance: Bool = false,
        instanceTagKeys: [String]? = nil
    )
    {
        self.includeAllTagsOfInstance = includeAllTagsOfInstance
        self.instanceTagKeys = instanceTagKeys
    }
}

extension InstanceTagNotificationAttribute: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InstanceTagNotificationAttribute(includeAllTagsOfInstance: \(String(describing: includeAllTagsOfInstance)), instanceTagKeys: \(String(describing: instanceTagKeys)))"}
}