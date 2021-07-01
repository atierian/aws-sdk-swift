// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListRegistriesOutputResponse: Equatable {
    /// <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    public let nextToken: String?
    /// <p>An array of registry summaries.</p>
    public let registries: [RegistrySummary]?

    public init (
        nextToken: String? = nil,
        registries: [RegistrySummary]? = nil
    )
    {
        self.nextToken = nextToken
        self.registries = registries
    }
}

extension ListRegistriesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListRegistriesOutputResponse(nextToken: \(String(describing: nextToken)), registries: \(String(describing: registries)))"}
}