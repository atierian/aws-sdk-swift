// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListAssessmentTemplatesInput: Equatable {
    /// <p>A list of ARNs that specifies the assessment targets whose assessment templates you
    ///          want to list.</p>
    public let assessmentTargetArns: [String]?
    /// <p>You can use this parameter to specify a subset of data to be included in the action's
    ///          response.</p>
    ///          <p>For a record to match a filter, all specified filter attributes must match. When
    ///          multiple values are specified for a filter attribute, any of the values can
    ///          match.</p>
    public let filter: AssessmentTemplateFilter?
    /// <p>You can use this parameter to indicate the maximum number of items you want in the
    ///          response. The default value is 10. The maximum value is 500.</p>
    public let maxResults: Int?
    /// <p>You can use this parameter when paginating results. Set the value of this parameter
    ///          to null on your first call to the <b>ListAssessmentTemplates</b>
    ///          action. Subsequent calls to the action fill <b>nextToken</b> in
    ///          the request with the value of <b>NextToken</b> from the previous
    ///          response to continue listing data.</p>
    public let nextToken: String?

    public init (
        assessmentTargetArns: [String]? = nil,
        filter: AssessmentTemplateFilter? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.assessmentTargetArns = assessmentTargetArns
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListAssessmentTemplatesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListAssessmentTemplatesInput(assessmentTargetArns: \(String(describing: assessmentTargetArns)), filter: \(String(describing: filter)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}