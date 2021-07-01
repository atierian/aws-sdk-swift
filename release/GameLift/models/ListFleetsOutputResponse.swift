// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the returned data in response to a request operation.</p>
public struct ListFleetsOutputResponse: Equatable {
    /// <p>A set of fleet IDs that match the list request.
    ///             You can retrieve additional information about all
    ///             returned fleets by passing this result set to a <a>DescribeFleetAttributes</a>, <a>DescribeFleetCapacity</a>, or
    ///                 <a>DescribeFleetUtilization</a> call.</p>
    public let fleetIds: [String]?
    /// <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    public let nextToken: String?

    public init (
        fleetIds: [String]? = nil,
        nextToken: String? = nil
    )
    {
        self.fleetIds = fleetIds
        self.nextToken = nextToken
    }
}

extension ListFleetsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListFleetsOutputResponse(fleetIds: \(String(describing: fleetIds)), nextToken: \(String(describing: nextToken)))"}
}