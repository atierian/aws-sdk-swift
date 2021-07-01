// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct ListApplicationsOutputResponse: Equatable {
    /// <p>List of <code>ApplicationSummary</code> objects. </p>
    public let applicationSummaries: [ApplicationSummary]?
    /// <p>Returns true if there are more applications to retrieve.</p>
    public let hasMoreApplications: Bool?

    public init (
        applicationSummaries: [ApplicationSummary]? = nil,
        hasMoreApplications: Bool? = nil
    )
    {
        self.applicationSummaries = applicationSummaries
        self.hasMoreApplications = hasMoreApplications
    }
}

extension ListApplicationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListApplicationsOutputResponse(applicationSummaries: \(String(describing: applicationSummaries)), hasMoreApplications: \(String(describing: hasMoreApplications)))"}
}