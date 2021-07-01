// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteThemeAliasOutputResponse: Equatable {
    /// <p>The name for the theme alias.</p>
    public let aliasName: String?
    /// <p>The Amazon Resource Name (ARN) of the theme resource using the deleted alias.</p>
    public let arn: String?
    /// <p>The AWS request ID for this operation.</p>
    public let requestId: String?
    /// <p>The HTTP status of the request.</p>
    public let status: Int
    /// <p>An ID for the theme associated with the deletion.</p>
    public let themeId: String?

    public init (
        aliasName: String? = nil,
        arn: String? = nil,
        requestId: String? = nil,
        status: Int = 0,
        themeId: String? = nil
    )
    {
        self.aliasName = aliasName
        self.arn = arn
        self.requestId = requestId
        self.status = status
        self.themeId = themeId
    }
}

extension DeleteThemeAliasOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteThemeAliasOutputResponse(aliasName: \(String(describing: aliasName)), arn: \(String(describing: arn)), requestId: \(String(describing: requestId)), status: \(String(describing: status)), themeId: \(String(describing: themeId)))"}
}