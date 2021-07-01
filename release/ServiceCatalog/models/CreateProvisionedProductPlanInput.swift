// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateProvisionedProductPlanInput: Equatable {
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
    /// <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    ///   the same response is returned for each repeated request.</p>
    public var idempotencyToken: String?
    /// <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
    ///          events.</p>
    public let notificationArns: [String]?
    /// <p>The path identifier of the product. This value is optional if the product
    ///          has a default path, and required if the product has more than one path.
    ///          To list the paths for a product, use <a>ListLaunchPaths</a>.</p>
    public let pathId: String?
    /// <p>The name of the plan.</p>
    public let planName: String?
    /// <p>The plan type.</p>
    public let planType: ProvisionedProductPlanType?
    /// <p>The product identifier.</p>
    public let productId: String?
    /// <p>A user-friendly name for the provisioned product. This value must be
    ///          unique for the AWS account and cannot be updated after the product is provisioned.</p>
    public let provisionedProductName: String?
    /// <p>The identifier of the provisioning artifact.</p>
    public let provisioningArtifactId: String?
    /// <p>Parameters specified by the administrator that are required for provisioning the
    ///          product.</p>
    public let provisioningParameters: [UpdateProvisioningParameter]?
    /// <p>One or more tags.</p>
    ///          <p>If the plan is for an existing provisioned product, the product must have a <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>
    public let tags: [Tag]?

    public init (
        acceptLanguage: String? = nil,
        idempotencyToken: String? = nil,
        notificationArns: [String]? = nil,
        pathId: String? = nil,
        planName: String? = nil,
        planType: ProvisionedProductPlanType? = nil,
        productId: String? = nil,
        provisionedProductName: String? = nil,
        provisioningArtifactId: String? = nil,
        provisioningParameters: [UpdateProvisioningParameter]? = nil,
        tags: [Tag]? = nil
    )
    {
        self.acceptLanguage = acceptLanguage
        self.idempotencyToken = idempotencyToken
        self.notificationArns = notificationArns
        self.pathId = pathId
        self.planName = planName
        self.planType = planType
        self.productId = productId
        self.provisionedProductName = provisionedProductName
        self.provisioningArtifactId = provisioningArtifactId
        self.provisioningParameters = provisioningParameters
        self.tags = tags
    }
}

extension CreateProvisionedProductPlanInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateProvisionedProductPlanInput(acceptLanguage: \(String(describing: acceptLanguage)), idempotencyToken: \(String(describing: idempotencyToken)), notificationArns: \(String(describing: notificationArns)), pathId: \(String(describing: pathId)), planName: \(String(describing: planName)), planType: \(String(describing: planType)), productId: \(String(describing: productId)), provisionedProductName: \(String(describing: provisionedProductName)), provisioningArtifactId: \(String(describing: provisioningArtifactId)), provisioningParameters: \(String(describing: provisioningParameters)), tags: \(String(describing: tags)))"}
}