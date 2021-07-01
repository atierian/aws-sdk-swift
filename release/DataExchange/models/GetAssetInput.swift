// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetAssetInput: Equatable {
    /// <p>The unique identifier for an asset.</p>
    public let assetId: String?
    /// <p>The unique identifier for a data set.</p>
    public let dataSetId: String?
    /// <p>The unique identifier for a revision.</p>
    public let revisionId: String?

    public init (
        assetId: String? = nil,
        dataSetId: String? = nil,
        revisionId: String? = nil
    )
    {
        self.assetId = assetId
        self.dataSetId = dataSetId
        self.revisionId = revisionId
    }
}

extension GetAssetInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetAssetInput(assetId: \(String(describing: assetId)), dataSetId: \(String(describing: dataSetId)), revisionId: \(String(describing: revisionId)))"}
}