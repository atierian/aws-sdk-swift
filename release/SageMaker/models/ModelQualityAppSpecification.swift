// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Container image configuration object for the monitoring job.</p>
public struct ModelQualityAppSpecification: Equatable {
    /// <p>An array of arguments for the container used to run the monitoring job.</p>
    public let containerArguments: [String]?
    /// <p>Specifies the entrypoint for a container that the monitoring job runs.</p>
    public let containerEntrypoint: [String]?
    /// <p>Sets the environment variables in the container that the monitoring job runs.</p>
    public let environment: [String:String]?
    /// <p>The address of the container image that the monitoring job runs.</p>
    public let imageUri: String?
    /// <p>An Amazon S3 URI to a script that is called after analysis has been performed.
    ///          Applicable only for the built-in (first party) containers.</p>
    public let postAnalyticsProcessorSourceUri: String?
    /// <p>The machine learning problem type of the model that the monitoring job monitors.</p>
    public let problemType: MonitoringProblemType?
    /// <p>An Amazon S3 URI to a script that is called per row prior to running analysis. It can
    ///          base64 decode the payload and convert it into a flatted json so that the built-in container
    ///          can use the converted data. Applicable only for the built-in (first party)
    ///          containers.</p>
    public let recordPreprocessorSourceUri: String?

    public init (
        containerArguments: [String]? = nil,
        containerEntrypoint: [String]? = nil,
        environment: [String:String]? = nil,
        imageUri: String? = nil,
        postAnalyticsProcessorSourceUri: String? = nil,
        problemType: MonitoringProblemType? = nil,
        recordPreprocessorSourceUri: String? = nil
    )
    {
        self.containerArguments = containerArguments
        self.containerEntrypoint = containerEntrypoint
        self.environment = environment
        self.imageUri = imageUri
        self.postAnalyticsProcessorSourceUri = postAnalyticsProcessorSourceUri
        self.problemType = problemType
        self.recordPreprocessorSourceUri = recordPreprocessorSourceUri
    }
}

extension ModelQualityAppSpecification: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModelQualityAppSpecification(containerArguments: \(String(describing: containerArguments)), containerEntrypoint: \(String(describing: containerEntrypoint)), environment: \(String(describing: environment)), imageUri: \(String(describing: imageUri)), postAnalyticsProcessorSourceUri: \(String(describing: postAnalyticsProcessorSourceUri)), problemType: \(String(describing: problemType)), recordPreprocessorSourceUri: \(String(describing: recordPreprocessorSourceUri)))"}
}