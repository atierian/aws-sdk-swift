// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetImportOutputResponse: Equatable {
    /// <p>A timestamp for the date and time that the import job was
    ///       created.</p>
    public let createdDate: Date?
    /// <p>A string that describes why an import job failed to
    ///       complete.</p>
    public let failureReason: [String]?
    /// <p>The identifier for the specific import job.</p>
    public let importId: String?
    /// <p>The status of the import job. If the status is <code>FAILED</code>,
    ///       you can get the reason for the failure from the <code>failureReason</code>
    ///       field.</p>
    public let importStatus: ImportStatus?
    /// <p>The action taken when there was a conflict between an existing
    ///       resource and a resource in the import file.</p>
    public let mergeStrategy: MergeStrategy?
    /// <p>The name given to the import job.</p>
    public let name: String?
    /// <p>The type of resource imported.</p>
    public let resourceType: ResourceType?

    public init (
        createdDate: Date? = nil,
        failureReason: [String]? = nil,
        importId: String? = nil,
        importStatus: ImportStatus? = nil,
        mergeStrategy: MergeStrategy? = nil,
        name: String? = nil,
        resourceType: ResourceType? = nil
    )
    {
        self.createdDate = createdDate
        self.failureReason = failureReason
        self.importId = importId
        self.importStatus = importStatus
        self.mergeStrategy = mergeStrategy
        self.name = name
        self.resourceType = resourceType
    }
}

extension GetImportOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetImportOutputResponse(createdDate: \(String(describing: createdDate)), failureReason: \(String(describing: failureReason)), importId: \(String(describing: importId)), importStatus: \(String(describing: importStatus)), mergeStrategy: \(String(describing: mergeStrategy)), name: \(String(describing: name)), resourceType: \(String(describing: resourceType)))"}
}