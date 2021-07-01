// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The configuration information required to deploy an Amazon Data Analytics Studio notebook as an application with durable state.</p>
public struct DeployAsApplicationConfigurationDescription: Equatable {
    /// <p>The location that holds the data required to specify an Amazon Data Analytics application.</p>
    public let s3ContentLocationDescription: S3ContentBaseLocationDescription?

    public init (
        s3ContentLocationDescription: S3ContentBaseLocationDescription? = nil
    )
    {
        self.s3ContentLocationDescription = s3ContentLocationDescription
    }
}

extension DeployAsApplicationConfigurationDescription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeployAsApplicationConfigurationDescription(s3ContentLocationDescription: \(String(describing: s3ContentLocationDescription)))"}
}