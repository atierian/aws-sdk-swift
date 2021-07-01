// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Details of the operation to be performed by the job.</p>
public struct ExportRevisionsToS3RequestDetails: Equatable {
    /// <p>The unique identifier for the data set associated with this export job.</p>
    public let dataSetId: String?
    /// <p>Encryption configuration for the export job.</p>
    public let encryption: ExportServerSideEncryption?
    /// <p>The destination for the revision.</p>
    public let revisionDestinations: [RevisionDestinationEntry]?

    public init (
        dataSetId: String? = nil,
        encryption: ExportServerSideEncryption? = nil,
        revisionDestinations: [RevisionDestinationEntry]? = nil
    )
    {
        self.dataSetId = dataSetId
        self.encryption = encryption
        self.revisionDestinations = revisionDestinations
    }
}

extension ExportRevisionsToS3RequestDetails: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ExportRevisionsToS3RequestDetails(dataSetId: \(String(describing: dataSetId)), encryption: \(String(describing: encryption)), revisionDestinations: \(String(describing: revisionDestinations)))"}
}