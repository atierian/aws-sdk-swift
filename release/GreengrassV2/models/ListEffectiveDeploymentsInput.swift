// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListEffectiveDeploymentsInput: Equatable {
    /// <p>The name of the core device. This is also the name of the AWS IoT thing.</p>
    public let coreDeviceThingName: String?
    /// <p>The maximum number of results to be returned per paginated request.</p>
    public let maxResults: Int
    /// <p>The token to be used for the next set of paginated results.</p>
    public let nextToken: String?

    public init (
        coreDeviceThingName: String? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil
    )
    {
        self.coreDeviceThingName = coreDeviceThingName
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListEffectiveDeploymentsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListEffectiveDeploymentsInput(coreDeviceThingName: \(String(describing: coreDeviceThingName)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}