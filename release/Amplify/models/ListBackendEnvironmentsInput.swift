// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> The request structure for the list backend environments request. </p>
public struct ListBackendEnvironmentsInput: Equatable {
    /// <p> The unique ID for an Amplify app. </p>
    public let appId: String?
    /// <p> The name of the backend environment </p>
    public let environmentName: String?
    /// <p> The maximum number of records to list in a single response. </p>
    public let maxResults: Int
    /// <p> A pagination token. Set to null to start listing backend environments from the start.
    ///             If a non-null pagination token is returned in a result, pass its value in here to list
    ///             more backend environments. </p>
    public let nextToken: String?

    public init (
        appId: String? = nil,
        environmentName: String? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil
    )
    {
        self.appId = appId
        self.environmentName = environmentName
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListBackendEnvironmentsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListBackendEnvironmentsInput(appId: \(String(describing: appId)), environmentName: \(String(describing: environmentName)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}