// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a target for an action.</p>
public struct ActionTarget: Equatable {
    /// <p>The resource type of the target.</p>
    public let resourceType: String?

    public init (
        resourceType: String? = nil
    )
    {
        self.resourceType = resourceType
    }
}

extension ActionTarget: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ActionTarget(resourceType: \(String(describing: resourceType)))"}
}