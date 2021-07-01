// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p/>
public struct ListConfigsOutputResponse: Equatable {
    /// <p>List of <code>Config</code> items.</p>
    public let configList: [ConfigListItem]?
    /// <p>Next token returned in the response of a previous <code>ListConfigs</code> call. Used to get the next page of results.</p>
    public let nextToken: String?

    public init (
        configList: [ConfigListItem]? = nil,
        nextToken: String? = nil
    )
    {
        self.configList = configList
        self.nextToken = nextToken
    }
}

extension ListConfigsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListConfigsOutputResponse(configList: \(String(describing: configList)), nextToken: \(String(describing: nextToken)))"}
}