// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies property- and tag-based conditions that define criteria for including or excluding S3 buckets from a classification job. Exclude conditions take precedence over include conditions.</p>
public struct S3BucketCriteriaForJob: Equatable {
    /// <p>The property- and tag-based conditions that determine which buckets to exclude from the job.</p>
    public let excludes: CriteriaBlockForJob?
    /// <p>The property- and tag-based conditions that determine which buckets to include in the job.</p>
    public let includes: CriteriaBlockForJob?

    public init (
        excludes: CriteriaBlockForJob? = nil,
        includes: CriteriaBlockForJob? = nil
    )
    {
        self.excludes = excludes
        self.includes = includes
    }
}

extension S3BucketCriteriaForJob: CustomDebugStringConvertible {
    public var debugDescription: String {
        "S3BucketCriteriaForJob(excludes: \(String(describing: excludes)), includes: \(String(describing: includes)))"}
}