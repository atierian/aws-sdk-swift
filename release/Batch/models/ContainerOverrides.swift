// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The overrides that should be sent to a container.</p>
public struct ContainerOverrides: Equatable {
    /// <p>The command to send to the container that overrides the default command from the Docker image or the job
    ///    definition.</p>
    public let command: [String]?
    /// <p>The environment variables to send to the container. You can add new environment variables, which are added to
    ///    the container at launch, or you can override the existing environment variables from the Docker image or the job
    ///    definition.</p>
    ///          <note>
    ///             <p>Environment variables must not start with <code>AWS_BATCH</code>; this naming
    ///  convention is reserved for variables that are set by the AWS Batch service.</p>
    ///          </note>
    public let environment: [KeyValuePair]?
    /// <p>The instance type to use for a multi-node parallel job.</p>
    ///          <note>
    ///             <p>This parameter isn't applicable to single-node container jobs or for jobs running on Fargate resources and
    ///     shouldn't be provided.</p>
    ///          </note>
    public let instanceType: String?
    /// <p>This parameter indicates the amount of memory (in MiB) that's reserved for the job. It overrides the
    ///     <code>memory</code> parameter set in the job definition, but doesn't override any memory requirement specified in
    ///    the <code>ResourceRequirement</code> structure in the job definition.</p>
    ///          <p>This parameter is supported for jobs that run on EC2 resources, but isn't supported for jobs that run on Fargate
    ///    resources. For these resources, use <code>resourceRequirement</code> instead.</p>
    @available(*, deprecated, message: "This field is deprecated, use resourceRequirements instead.")
    public let memory: Int
    /// <p>The type and amount of resources to assign to a container. This overrides the settings in the job definition.
    ///    The supported resources include <code>GPU</code>, <code>MEMORY</code>, and <code>VCPU</code>.</p>
    public let resourceRequirements: [ResourceRequirement]?
    /// <p>This parameter indicates the number of vCPUs reserved for the container.It overrides the <code>vcpus</code>
    ///    parameter that's set in the job definition, but doesn't override any vCPU requirement specified in the
    ///     <code>resourceRequirement</code> structure in the job definition.</p>
    ///          <p>This parameter is supported for jobs that run on EC2 resources, but isn't supported for jobs that run on Fargate
    ///    resources. For Fargate resources, you can only use <code>resourceRequirement</code>. For EC2 resources, you can use
    ///    either this parameter or <code>resourceRequirement</code> but not both. </p>
    ///          <p>This parameter maps to <code>CpuShares</code> in the <a href="https://docs.docker.com/engine/api/v1.23/#create-a-container">Create a container</a> section of the
    ///    <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--cpu-shares</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.
    ///    Each vCPU is equivalent to 1,024 CPU shares. You must specify at least one vCPU.</p>
    ///          <note>
    ///
    ///             <p>This parameter isn't applicable to jobs that run on Fargate resources and shouldn't be provided. For jobs
    ///     that run on Fargate resources, you must specify the vCPU requirement for the job using
    ///      <code>resourceRequirements</code>.</p>
    ///
    ///          </note>
    @available(*, deprecated, message: "This field is deprecated, use resourceRequirements instead.")
    public let vcpus: Int

    public init (
        command: [String]? = nil,
        environment: [KeyValuePair]? = nil,
        instanceType: String? = nil,
        memory: Int = 0,
        resourceRequirements: [ResourceRequirement]? = nil,
        vcpus: Int = 0
    )
    {
        self.command = command
        self.environment = environment
        self.instanceType = instanceType
        self.memory = memory
        self.resourceRequirements = resourceRequirements
        self.vcpus = vcpus
    }
}

extension ContainerOverrides: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ContainerOverrides(command: \(String(describing: command)), environment: \(String(describing: environment)), instanceType: \(String(describing: instanceType)), memory: \(String(describing: memory)), resourceRequirements: \(String(describing: resourceRequirements)), vcpus: \(String(describing: vcpus)))"}
}