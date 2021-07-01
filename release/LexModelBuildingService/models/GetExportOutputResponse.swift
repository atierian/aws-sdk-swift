// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetExportOutputResponse: Equatable {
    /// <p>The status of the export. </p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>IN_PROGRESS</code> - The export is in progress.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>READY</code> - The export is complete.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>FAILED</code> - The export could not be
    ///           completed.</p>
    ///             </li>
    ///          </ul>
    public let exportStatus: ExportStatus?
    /// <p>The format of the exported data.</p>
    public let exportType: ExportType?
    /// <p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the
    ///       reason that it failed to export the resource.</p>
    public let failureReason: String?
    /// <p>The name of the bot being exported.</p>
    public let name: String?
    /// <p>The type of the exported resource.</p>
    public let resourceType: ResourceType?
    /// <p>An S3 pre-signed URL that provides the location of the exported
    ///       resource. The exported resource is a ZIP archive that contains the
    ///       exported resource in JSON format. The structure of the archive may change.
    ///       Your code should not rely on the archive structure.</p>
    public let url: String?
    /// <p>The version of the bot being exported.</p>
    public let version: String?

    public init (
        exportStatus: ExportStatus? = nil,
        exportType: ExportType? = nil,
        failureReason: String? = nil,
        name: String? = nil,
        resourceType: ResourceType? = nil,
        url: String? = nil,
        version: String? = nil
    )
    {
        self.exportStatus = exportStatus
        self.exportType = exportType
        self.failureReason = failureReason
        self.name = name
        self.resourceType = resourceType
        self.url = url
        self.version = version
    }
}

extension GetExportOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetExportOutputResponse(exportStatus: \(String(describing: exportStatus)), exportType: \(String(describing: exportType)), failureReason: \(String(describing: failureReason)), name: \(String(describing: name)), resourceType: \(String(describing: resourceType)), url: \(String(describing: url)), version: \(String(describing: version)))"}
}