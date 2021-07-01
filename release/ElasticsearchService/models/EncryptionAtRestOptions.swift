// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the Encryption At Rest Options.</p>
public struct EncryptionAtRestOptions: Equatable {
    /// <p>Specifies the option to enable Encryption At Rest.</p>
    public let enabled: Bool?
    /// <p> Specifies the KMS Key ID for Encryption At Rest options.</p>
    public let kmsKeyId: String?

    public init (
        enabled: Bool? = nil,
        kmsKeyId: String? = nil
    )
    {
        self.enabled = enabled
        self.kmsKeyId = kmsKeyId
    }
}

extension EncryptionAtRestOptions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EncryptionAtRestOptions(enabled: \(String(describing: enabled)), kmsKeyId: \(String(describing: kmsKeyId)))"}
}