// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartImportOutputResponse: Equatable {
    /// <p>A timestamp for the date and time that the import job was
    ///       requested.</p>
    public let createdDate: Date?
    /// <p>The identifier for the specific import job.</p>
    public let importId: String?
    /// <p>The status of the import job. If the status is <code>FAILED</code>,
    ///       you can get the reason for the failure using the <code>GetImport</code>
    ///       operation.</p>
    public let importStatus: ImportStatus?
    /// <p>The action to take when there is a merge conflict.</p>
    public let mergeStrategy: MergeStrategy?
    /// <p>The name given to the import job.</p>
    public let name: String?
    /// <p>The type of resource to import.</p>
    public let resourceType: ResourceType?
    /// <p>A list of tags added to the imported bot.</p>
    public let tags: [Tag]?

    public init (
        createdDate: Date? = nil,
        importId: String? = nil,
        importStatus: ImportStatus? = nil,
        mergeStrategy: MergeStrategy? = nil,
        name: String? = nil,
        resourceType: ResourceType? = nil,
        tags: [Tag]? = nil
    )
    {
        self.createdDate = createdDate
        self.importId = importId
        self.importStatus = importStatus
        self.mergeStrategy = mergeStrategy
        self.name = name
        self.resourceType = resourceType
        self.tags = tags
    }
}

extension StartImportOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartImportOutputResponse(createdDate: \(String(describing: createdDate)), importId: \(String(describing: importId)), importStatus: \(String(describing: importStatus)), mergeStrategy: \(String(describing: mergeStrategy)), name: \(String(describing: name)), resourceType: \(String(describing: resourceType)), tags: \(String(describing: tags)))"}
}