// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartAttachmentUploadOutputResponse: Equatable {
    /// <p>A unique identifier for the attachment.</p>
    public let attachmentId: String?
    /// <p>Fields to be used while uploading the attachment.</p>
    public let uploadMetadata: UploadMetadata?

    public init (
        attachmentId: String? = nil,
        uploadMetadata: UploadMetadata? = nil
    )
    {
        self.attachmentId = attachmentId
        self.uploadMetadata = uploadMetadata
    }
}

extension StartAttachmentUploadOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartAttachmentUploadOutputResponse(attachmentId: \(String(describing: attachmentId)), uploadMetadata: \(String(describing: uploadMetadata)))"}
}