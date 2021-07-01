// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateProcessingJobInput: Equatable {
    /// <p>Configures the processing job to run a specified Docker container image.</p>
    public let appSpecification: AppSpecification?
    /// <p>The environment variables to set in the Docker container. Up to
    ///             100 key and values entries in the map are supported.</p>
    public let environment: [String:String]?
    /// <p>Associates a SageMaker job as a trial component with an experiment and trial. Specified when
    ///       you call the following APIs:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <a>CreateProcessingJob</a>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <a>CreateTrainingJob</a>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <a>CreateTransformJob</a>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let experimentConfig: ExperimentConfig?
    /// <p>Networking options for a processing job, such as whether to allow inbound and
    ///             outbound network calls to and from processing containers, and the VPC subnets and
    ///             security groups to use for VPC-enabled processing jobs.</p>
    public let networkConfig: NetworkConfig?
    /// <p>An array of inputs configuring the data to download into the
    ///             processing container.</p>
    public let processingInputs: [ProcessingInput]?
    /// <p> The name of the processing job. The name must be unique within an AWS Region in the
    ///             AWS account.</p>
    public let processingJobName: String?
    /// <p>Output configuration for the processing job.</p>
    public let processingOutputConfig: ProcessingOutputConfig?
    /// <p>Identifies the resources, ML compute instances, and ML storage volumes to deploy for a
    ///             processing job. In distributed training, you specify more than one instance.</p>
    public let processingResources: ProcessingResources?
    /// <p>The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on
    ///             your behalf.</p>
    public let roleArn: String?
    /// <p>The time limit for how long the processing job is allowed to run.</p>
    public let stoppingCondition: ProcessingStoppingCondition?
    /// <p>(Optional) An array of key-value pairs. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management
    ///                 User Guide</i>.</p>
    public let tags: [Tag]?

    public init (
        appSpecification: AppSpecification? = nil,
        environment: [String:String]? = nil,
        experimentConfig: ExperimentConfig? = nil,
        networkConfig: NetworkConfig? = nil,
        processingInputs: [ProcessingInput]? = nil,
        processingJobName: String? = nil,
        processingOutputConfig: ProcessingOutputConfig? = nil,
        processingResources: ProcessingResources? = nil,
        roleArn: String? = nil,
        stoppingCondition: ProcessingStoppingCondition? = nil,
        tags: [Tag]? = nil
    )
    {
        self.appSpecification = appSpecification
        self.environment = environment
        self.experimentConfig = experimentConfig
        self.networkConfig = networkConfig
        self.processingInputs = processingInputs
        self.processingJobName = processingJobName
        self.processingOutputConfig = processingOutputConfig
        self.processingResources = processingResources
        self.roleArn = roleArn
        self.stoppingCondition = stoppingCondition
        self.tags = tags
    }
}

extension CreateProcessingJobInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateProcessingJobInput(appSpecification: \(String(describing: appSpecification)), environment: \(String(describing: environment)), experimentConfig: \(String(describing: experimentConfig)), networkConfig: \(String(describing: networkConfig)), processingInputs: \(String(describing: processingInputs)), processingJobName: \(String(describing: processingJobName)), processingOutputConfig: \(String(describing: processingOutputConfig)), processingResources: \(String(describing: processingResources)), roleArn: \(String(describing: roleArn)), stoppingCondition: \(String(describing: stoppingCondition)), tags: \(String(describing: tags)))"}
}