// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListExperimentTemplatesOutputResponse: Equatable {
    /// <p>The experiment templates.</p>
    public let experimentTemplates: [ExperimentTemplateSummary]?
    /// <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    public let nextToken: String?

    public init (
        experimentTemplates: [ExperimentTemplateSummary]? = nil,
        nextToken: String? = nil
    )
    {
        self.experimentTemplates = experimentTemplates
        self.nextToken = nextToken
    }
}

extension ListExperimentTemplatesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListExperimentTemplatesOutputResponse(experimentTemplates: \(String(describing: experimentTemplates)), nextToken: \(String(describing: nextToken)))"}
}