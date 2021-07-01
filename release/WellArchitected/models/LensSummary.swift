// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A lens summary of a lens.</p>
public struct LensSummary: Equatable {
    /// <p>The description of the lens.</p>
    public let description: String?
    /// <p>The alias of the lens, for example, <code>serverless</code>.</p>
    ///         <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    public let lensAlias: String?
    /// <p>The full name of the lens.</p>
    public let lensName: String?
    /// <p>The version of the lens.</p>
    public let lensVersion: String?

    public init (
        description: String? = nil,
        lensAlias: String? = nil,
        lensName: String? = nil,
        lensVersion: String? = nil
    )
    {
        self.description = description
        self.lensAlias = lensAlias
        self.lensName = lensName
        self.lensVersion = lensVersion
    }
}

extension LensSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LensSummary(description: \(String(describing: description)), lensAlias: \(String(describing: lensAlias)), lensName: \(String(describing: lensName)), lensVersion: \(String(describing: lensVersion)))"}
}