// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Location information about a manifest file. You can use a manifest file to
///       create a dataset.</p>
public struct DatasetGroundTruthManifest: Equatable {
    /// <p>The S3 bucket location for the manifest file.</p>
    public let s3Object: InputS3Object?

    public init (
        s3Object: InputS3Object? = nil
    )
    {
        self.s3Object = s3Object
    }
}

extension DatasetGroundTruthManifest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DatasetGroundTruthManifest(s3Object: \(String(describing: s3Object)))"}
}