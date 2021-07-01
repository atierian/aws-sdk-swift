// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreatePublicKeyOutputResponse: Equatable {
    /// <p>The identifier for this version of the public key.</p>
    public let eTag: String?
    /// <p>The URL of the public key.</p>
    public let location: String?
    /// <p>The public key.</p>
    public let publicKey: PublicKey?

    public init (
        eTag: String? = nil,
        location: String? = nil,
        publicKey: PublicKey? = nil
    )
    {
        self.eTag = eTag
        self.location = location
        self.publicKey = publicKey
    }
}

extension CreatePublicKeyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreatePublicKeyOutputResponse(eTag: \(String(describing: eTag)), location: \(String(describing: location)), publicKey: \(String(describing: publicKey)))"}
}