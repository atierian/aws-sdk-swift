// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateInstanceStorageConfigInput: Equatable {
    /// <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    public let associationId: String?
    /// <p>The identifier of the Amazon Connect instance.</p>
    public let instanceId: String?
    /// <p>A valid resource type.</p>
    public let resourceType: InstanceStorageResourceType?
    /// <p>The storage configuration for the instance.</p>
    public let storageConfig: InstanceStorageConfig?

    public init (
        associationId: String? = nil,
        instanceId: String? = nil,
        resourceType: InstanceStorageResourceType? = nil,
        storageConfig: InstanceStorageConfig? = nil
    )
    {
        self.associationId = associationId
        self.instanceId = instanceId
        self.resourceType = resourceType
        self.storageConfig = storageConfig
    }
}

extension UpdateInstanceStorageConfigInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateInstanceStorageConfigInput(associationId: \(String(describing: associationId)), instanceId: \(String(describing: instanceId)), resourceType: \(String(describing: resourceType)), storageConfig: \(String(describing: storageConfig)))"}
}