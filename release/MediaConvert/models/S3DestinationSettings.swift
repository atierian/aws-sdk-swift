// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Settings associated with S3 destination
public struct S3DestinationSettings: Equatable {
    /// Optional. Have MediaConvert automatically apply Amazon S3 access control for the outputs in this output group. When you don't use this setting, S3 automatically applies the default access control list PRIVATE.
    public let accessControl: S3DestinationAccessControl?
    /// Settings for how your job outputs are encrypted as they are uploaded to Amazon S3.
    public let encryption: S3EncryptionSettings?

    public init (
        accessControl: S3DestinationAccessControl? = nil,
        encryption: S3EncryptionSettings? = nil
    )
    {
        self.accessControl = accessControl
        self.encryption = encryption
    }
}

extension S3DestinationSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "S3DestinationSettings(accessControl: \(String(describing: accessControl)), encryption: \(String(describing: encryption)))"}
}