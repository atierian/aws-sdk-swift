// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a disk image.</p>
public struct DiskImageDescription: Equatable {
    /// <p>The checksum computed for the disk image.</p>
    public let checksum: String?
    /// <p>The disk image format.</p>
    public let format: DiskImageFormat?
    /// <p>A presigned URL for the import manifest stored in Amazon S3. For information about creating a presigned URL for
    ///    an Amazon S3 object, read the "Query String Request Authentication Alternative" section of the <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html">Authenticating REST Requests</a> topic in
    ///    the <i>Amazon Simple Storage Service Developer Guide</i>.</p>
    ///          <p>For information about the import manifest referenced by this API action, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html">VM Import Manifest</a>.</p>
    public let importManifestUrl: String?
    /// <p>The size of the disk image, in GiB.</p>
    public let size: Int

    public init (
        checksum: String? = nil,
        format: DiskImageFormat? = nil,
        importManifestUrl: String? = nil,
        size: Int = 0
    )
    {
        self.checksum = checksum
        self.format = format
        self.importManifestUrl = importManifestUrl
        self.size = size
    }
}

extension DiskImageDescription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DiskImageDescription(checksum: \(String(describing: checksum)), format: \(String(describing: format)), importManifestUrl: \(String(describing: importManifestUrl)), size: \(String(describing: size)))"}
}