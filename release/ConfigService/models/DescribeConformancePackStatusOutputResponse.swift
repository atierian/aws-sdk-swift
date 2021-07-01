// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeConformancePackStatusOutputResponse: Equatable {
    /// <p>A list of <code>ConformancePackStatusDetail</code> objects.</p>
    public let conformancePackStatusDetails: [ConformancePackStatusDetail]?
    /// <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    public let nextToken: String?

    public init (
        conformancePackStatusDetails: [ConformancePackStatusDetail]? = nil,
        nextToken: String? = nil
    )
    {
        self.conformancePackStatusDetails = conformancePackStatusDetails
        self.nextToken = nextToken
    }
}

extension DescribeConformancePackStatusOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeConformancePackStatusOutputResponse(conformancePackStatusDetails: \(String(describing: conformancePackStatusDetails)), nextToken: \(String(describing: nextToken)))"}
}