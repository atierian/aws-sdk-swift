// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the permissions that are available to the specified AWS account for a shared image.</p>
public struct SharedImagePermissions: Equatable {
    /// <p>Describes the permissions for a shared image.</p>
    public let imagePermissions: ImagePermissions?
    /// <p>The 12-digit identifier of the AWS account with which the image is shared.</p>
    public let sharedAccountId: String?

    public init (
        imagePermissions: ImagePermissions? = nil,
        sharedAccountId: String? = nil
    )
    {
        self.imagePermissions = imagePermissions
        self.sharedAccountId = sharedAccountId
    }
}

extension SharedImagePermissions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SharedImagePermissions(imagePermissions: \(String(describing: imagePermissions)), sharedAccountId: \(String(describing: sharedAccountId)))"}
}