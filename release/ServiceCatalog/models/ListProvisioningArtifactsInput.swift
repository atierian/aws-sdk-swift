// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListProvisioningArtifactsInput: Equatable {
    /// <p>The language code.</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>en</code> - English (default)</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>jp</code> - Japanese</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>zh</code> - Chinese</p>
    ///             </li>
    ///          </ul>
    public let acceptLanguage: String?
    /// <p>The product identifier.</p>
    public let productId: String?

    public init (
        acceptLanguage: String? = nil,
        productId: String? = nil
    )
    {
        self.acceptLanguage = acceptLanguage
        self.productId = productId
    }
}

extension ListProvisioningArtifactsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListProvisioningArtifactsInput(acceptLanguage: \(String(describing: acceptLanguage)), productId: \(String(describing: productId)))"}
}