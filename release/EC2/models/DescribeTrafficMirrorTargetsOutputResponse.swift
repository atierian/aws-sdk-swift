// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeTrafficMirrorTargetsOutputResponse: Equatable {
    /// <p>The token to use to retrieve the next page of results. The value is <code>null</code> when there are no more results to return.</p>
    public let nextToken: String?
    /// <p>Information about one or more Traffic Mirror targets.</p>
    public let trafficMirrorTargets: [TrafficMirrorTarget]?

    public init (
        nextToken: String? = nil,
        trafficMirrorTargets: [TrafficMirrorTarget]? = nil
    )
    {
        self.nextToken = nextToken
        self.trafficMirrorTargets = trafficMirrorTargets
    }
}

extension DescribeTrafficMirrorTargetsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeTrafficMirrorTargetsOutputResponse(nextToken: \(String(describing: nextToken)), trafficMirrorTargets: \(String(describing: trafficMirrorTargets)))"}
}