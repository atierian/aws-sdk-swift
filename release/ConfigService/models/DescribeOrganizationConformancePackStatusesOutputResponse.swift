// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeOrganizationConformancePackStatusesOutputResponse: Equatable {
    /// <p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>
    public let nextToken: String?
    /// <p>A list of <code>OrganizationConformancePackStatus</code> objects. </p>
    public let organizationConformancePackStatuses: [OrganizationConformancePackStatus]?

    public init (
        nextToken: String? = nil,
        organizationConformancePackStatuses: [OrganizationConformancePackStatus]? = nil
    )
    {
        self.nextToken = nextToken
        self.organizationConformancePackStatuses = organizationConformancePackStatuses
    }
}

extension DescribeOrganizationConformancePackStatusesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeOrganizationConformancePackStatusesOutputResponse(nextToken: \(String(describing: nextToken)), organizationConformancePackStatuses: \(String(describing: organizationConformancePackStatuses)))"}
}