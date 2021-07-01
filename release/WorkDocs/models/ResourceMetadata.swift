// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the metadata of a resource.</p>
public struct ResourceMetadata: Equatable {
    /// <p>The ID of the resource.</p>
    public let id: String?
    /// <p>The name of the resource.</p>
    public let name: String?
    /// <p>The original name of the resource before a rename operation.</p>
    public let originalName: String?
    /// <p>The owner of the resource.</p>
    public let owner: UserMetadata?
    /// <p>The parent ID of the resource before a rename operation.</p>
    public let parentId: String?
    /// <p>The type of resource.</p>
    public let type: ResourceType?
    /// <p>The version ID of the resource. This is an optional field and is filled for action
    ///             on document version.</p>
    public let versionId: String?

    public init (
        id: String? = nil,
        name: String? = nil,
        originalName: String? = nil,
        owner: UserMetadata? = nil,
        parentId: String? = nil,
        type: ResourceType? = nil,
        versionId: String? = nil
    )
    {
        self.id = id
        self.name = name
        self.originalName = originalName
        self.owner = owner
        self.parentId = parentId
        self.type = type
        self.versionId = versionId
    }
}

extension ResourceMetadata: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResourceMetadata(id: \(String(describing: id)), name: \(String(describing: name)), originalName: \(String(describing: originalName)), owner: \(String(describing: owner)), parentId: \(String(describing: parentId)), type: \(String(describing: type)), versionId: \(String(describing: versionId)))"}
}