// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListSimulationApplicationsOutputResponse: Equatable {
    /// <p>If the previous paginated request did not return all of the remaining results, the
    ///          response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    ///          next set of results, call <code>ListSimulationApplications</code> again and assign that
    ///          token to the request object's <code>nextToken</code> parameter. If there are no remaining
    ///          results, the previous response object's NextToken parameter is set to null. </p>
    public let nextToken: String?
    /// <p>A list of simulation application summaries that meet the criteria of the request.</p>
    public let simulationApplicationSummaries: [SimulationApplicationSummary]?

    public init (
        nextToken: String? = nil,
        simulationApplicationSummaries: [SimulationApplicationSummary]? = nil
    )
    {
        self.nextToken = nextToken
        self.simulationApplicationSummaries = simulationApplicationSummaries
    }
}

extension ListSimulationApplicationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListSimulationApplicationsOutputResponse(nextToken: \(String(describing: nextToken)), simulationApplicationSummaries: \(String(describing: simulationApplicationSummaries)))"}
}