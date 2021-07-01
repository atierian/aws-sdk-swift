// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides options for retrieving a list of parts of an archive that have been uploaded
///          in a specific multipart upload.</p>
public struct ListPartsInput: Equatable {
    /// <p>The <code>AccountId</code> value is the AWS account ID of the account that owns the
    ///          vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'
    ///          (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the
    ///          credentials used to sign the request. If you use an account ID, do not include any hyphens
    ///          ('-') in the ID. </p>
    public let accountId: String?
    /// <p>The maximum number of parts to be returned. The default limit is 50. The number of
    ///          parts returned might be fewer than the specified limit, but the number of returned parts
    ///          never exceeds the limit.</p>
    public let limit: Int?
    /// <p>An opaque string used for pagination. This value specifies the part at which the
    ///          listing of parts should begin. Get the marker value from the response of a previous List
    ///          Parts response. You need only include the marker if you are continuing the pagination of
    ///          results started in a previous List Parts request.</p>
    public let marker: String?
    /// <p>The upload ID of the multipart upload.</p>
    public let uploadId: String?
    /// <p>The name of the vault.</p>
    public let vaultName: String?

    public init (
        accountId: String? = nil,
        limit: Int? = nil,
        marker: String? = nil,
        uploadId: String? = nil,
        vaultName: String? = nil
    )
    {
        self.accountId = accountId
        self.limit = limit
        self.marker = marker
        self.uploadId = uploadId
        self.vaultName = vaultName
    }
}

extension ListPartsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListPartsInput(accountId: \(String(describing: accountId)), limit: \(String(describing: limit)), marker: \(String(describing: marker)), uploadId: \(String(describing: uploadId)), vaultName: \(String(describing: vaultName)))"}
}