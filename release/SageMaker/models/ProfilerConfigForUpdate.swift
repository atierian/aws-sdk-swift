// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Configuration information for updating the Debugger profile parameters, system and framework metrics configurations, and
///             storage paths.</p>
public struct ProfilerConfigForUpdate: Equatable {
    /// <p>To disable Debugger monitoring and profiling, set to <code>True</code>.</p>
    public let disableProfiler: Bool
    /// <p>A time interval for capturing system metrics in milliseconds. Available values are
    ///             100, 200, 500, 1000 (1 second), 5000 (5 seconds), and 60000 (1 minute) milliseconds. The default value is 500 milliseconds.</p>
    public let profilingIntervalInMilliseconds: Int?
    /// <p>Configuration information for capturing framework metrics. Available key strings for different profiling options are
    ///             <code>DetailedProfilingConfig</code>, <code>PythonProfilingConfig</code>, and <code>DataLoaderProfilingConfig</code>.
    ///             The following codes are configuration structures for the <code>ProfilingParameters</code> parameter. To learn more about
    ///             how to configure the <code>ProfilingParameters</code> parameter,
    ///             see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/debugger-createtrainingjob-api.html">Use the SageMaker and Debugger Configuration API Operations to Create, Update, and Debug Your Training Job</a>.
    ///         </p>
    public let profilingParameters: [String:String]?
    /// <p>Path to Amazon S3 storage location for system and framework metrics.</p>
    public let s3OutputPath: String?

    public init (
        disableProfiler: Bool = false,
        profilingIntervalInMilliseconds: Int? = nil,
        profilingParameters: [String:String]? = nil,
        s3OutputPath: String? = nil
    )
    {
        self.disableProfiler = disableProfiler
        self.profilingIntervalInMilliseconds = profilingIntervalInMilliseconds
        self.profilingParameters = profilingParameters
        self.s3OutputPath = s3OutputPath
    }
}

extension ProfilerConfigForUpdate: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ProfilerConfigForUpdate(disableProfiler: \(String(describing: disableProfiler)), profilingIntervalInMilliseconds: \(String(describing: profilingIntervalInMilliseconds)), profilingParameters: \(String(describing: profilingParameters)), s3OutputPath: \(String(describing: s3OutputPath)))"}
}