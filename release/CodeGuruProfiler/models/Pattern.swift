// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///             A set of rules used to make a recommendation during an analysis.
///         </p>
public struct Pattern: Equatable {
    /// <p>
    ///             A list of the different counters used to determine if there is a match.
    ///         </p>
    public let countersToAggregate: [String]?
    /// <p>The description of the recommendation. This explains a potential
    ///             inefficiency in a profiled application.</p>
    public let description: String?
    /// <p>The universally unique identifier (UUID) of this pattern.</p>
    public let id: String?
    /// <p>The name for this pattern.</p>
    public let name: String?
    /// <p>
    ///             A string that contains the steps recommended to address the potential inefficiency.
    ///         </p>
    public let resolutionSteps: String?
    /// <p>A list of frame names that were searched during the analysis that generated
    ///             a recommendation.</p>
    public let targetFrames: [[String]]?
    /// <p>
    ///             The percentage of time an application spends in one method that triggers
    ///             a recommendation. The percentage of time is the same as the percentage of
    ///             the total gathered sample counts during analysis.
    ///         </p>
    public let thresholdPercent: Double

    public init (
        countersToAggregate: [String]? = nil,
        description: String? = nil,
        id: String? = nil,
        name: String? = nil,
        resolutionSteps: String? = nil,
        targetFrames: [[String]]? = nil,
        thresholdPercent: Double = 0.0
    )
    {
        self.countersToAggregate = countersToAggregate
        self.description = description
        self.id = id
        self.name = name
        self.resolutionSteps = resolutionSteps
        self.targetFrames = targetFrames
        self.thresholdPercent = thresholdPercent
    }
}

extension Pattern: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Pattern(countersToAggregate: \(String(describing: countersToAggregate)), description: \(String(describing: description)), id: \(String(describing: id)), name: \(String(describing: name)), resolutionSteps: \(String(describing: resolutionSteps)), targetFrames: \(String(describing: targetFrames)), thresholdPercent: \(String(describing: thresholdPercent)))"}
}