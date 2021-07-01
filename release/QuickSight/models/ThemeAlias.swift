// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An alias for a theme.</p>
public struct ThemeAlias: Equatable {
    /// <p>The display name of the theme alias.</p>
    public let aliasName: String?
    /// <p>The Amazon Resource Name (ARN) of the theme alias.</p>
    public let arn: String?
    /// <p>The version number of the theme alias.</p>
    public let themeVersionNumber: Int?

    public init (
        aliasName: String? = nil,
        arn: String? = nil,
        themeVersionNumber: Int? = nil
    )
    {
        self.aliasName = aliasName
        self.arn = arn
        self.themeVersionNumber = themeVersionNumber
    }
}

extension ThemeAlias: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ThemeAlias(aliasName: \(String(describing: aliasName)), arn: \(String(describing: arn)), themeVersionNumber: \(String(describing: themeVersionNumber)))"}
}