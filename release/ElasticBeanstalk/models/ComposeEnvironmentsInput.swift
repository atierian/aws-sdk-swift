// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Request to create or update a group of environments.</p>
public struct ComposeEnvironmentsInput: Equatable {
    /// <p>The name of the application to which the specified source bundles belong.</p>
    public let applicationName: String?
    /// <p>The name of the group to which the target environments belong. Specify a group name
    ///       only if the environment name defined in each target environment's manifest ends with a +
    ///       (plus) character. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest
    ///         (env.yaml)</a> for details.</p>
    public let groupName: String?
    /// <p>A list of version labels, specifying one or more application source bundles that belong
    ///       to the target application. Each source bundle must include an environment manifest that
    ///       specifies the name of the environment and the name of the solution stack to use, and
    ///       optionally can specify environment links to create.</p>
    public let versionLabels: [String]?

    public init (
        applicationName: String? = nil,
        groupName: String? = nil,
        versionLabels: [String]? = nil
    )
    {
        self.applicationName = applicationName
        self.groupName = groupName
        self.versionLabels = versionLabels
    }
}

extension ComposeEnvironmentsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ComposeEnvironmentsInput(applicationName: \(String(describing: applicationName)), groupName: \(String(describing: groupName)), versionLabels: \(String(describing: versionLabels)))"}
}