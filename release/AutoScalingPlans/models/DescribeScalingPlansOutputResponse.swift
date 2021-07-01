// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeScalingPlansOutputResponse: Equatable {
    /// <p>The token required to get the next set of results. This value is <code>null</code> if
    ///          there are no more results to return.</p>
    public let nextToken: String?
    /// <p>Information about the scaling plans.</p>
    public let scalingPlans: [ScalingPlan]?

    public init (
        nextToken: String? = nil,
        scalingPlans: [ScalingPlan]? = nil
    )
    {
        self.nextToken = nextToken
        self.scalingPlans = scalingPlans
    }
}

extension DescribeScalingPlansOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeScalingPlansOutputResponse(nextToken: \(String(describing: nextToken)), scalingPlans: \(String(describing: scalingPlans)))"}
}