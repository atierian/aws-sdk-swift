// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateAccountCustomizationOutputResponse: Equatable {
    /// <p>The QuickSight customizations you're updating in the current AWS Region. </p>
    public let accountCustomization: AccountCustomization?
    /// <p>The Amazon Resource Name (ARN) for the updated customization for this AWS account.</p>
    public let arn: String?
    /// <p>The ID for the AWS account that you want to update QuickSight customizations
    ///             for.</p>
    public let awsAccountId: String?
    /// <p>The namespace associated with the customization that you're updating.</p>
    public let namespace: String?
    /// <p>The AWS request ID for this operation.</p>
    public let requestId: String?
    /// <p>The HTTP status of the request.</p>
    public let status: Int

    public init (
        accountCustomization: AccountCustomization? = nil,
        arn: String? = nil,
        awsAccountId: String? = nil,
        namespace: String? = nil,
        requestId: String? = nil,
        status: Int = 0
    )
    {
        self.accountCustomization = accountCustomization
        self.arn = arn
        self.awsAccountId = awsAccountId
        self.namespace = namespace
        self.requestId = requestId
        self.status = status
    }
}

extension UpdateAccountCustomizationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateAccountCustomizationOutputResponse(accountCustomization: \(String(describing: accountCustomization)), arn: \(String(describing: arn)), awsAccountId: \(String(describing: awsAccountId)), namespace: \(String(describing: namespace)), requestId: \(String(describing: requestId)), status: \(String(describing: status)))"}
}