// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateSecurityProfileOutputResponse: Equatable {
    /// <p>
    ///             <i>Please use
    ///           <a>UpdateSecurityProfileResponse$additionalMetricsToRetainV2</a>
    ///         instead.</i>
    ///          </p>
    ///          <p>A list of metrics
    ///       whose data is retained (stored). By default, data is retained for any metric
    ///       used in the security profile's <code>behaviors</code>, but
    ///       it is
    ///       also retained for any metric specified here.</p>
    @available(*, deprecated, message: "Use additionalMetricsToRetainV2.")
    public let additionalMetricsToRetain: [String]?
    /// <p>A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    public let additionalMetricsToRetainV2: [MetricToRetain]?
    /// <p>Where the alerts are sent. (Alerts are always sent to the console.)</p>
    public let alertTargets: [String:AlertTarget]?
    /// <p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>
    public let behaviors: [Behavior]?
    /// <p>The time the security profile was created.</p>
    public let creationDate: Date?
    /// <p>The time the security profile was last modified.</p>
    public let lastModifiedDate: Date?
    /// <p>The ARN of the security profile that was updated.</p>
    public let securityProfileArn: String?
    /// <p>The description of the security profile.</p>
    public let securityProfileDescription: String?
    /// <p>The name of the security profile that was updated.</p>
    public let securityProfileName: String?
    /// <p>The updated version of the security profile.</p>
    public let version: Int

    public init (
        additionalMetricsToRetain: [String]? = nil,
        additionalMetricsToRetainV2: [MetricToRetain]? = nil,
        alertTargets: [String:AlertTarget]? = nil,
        behaviors: [Behavior]? = nil,
        creationDate: Date? = nil,
        lastModifiedDate: Date? = nil,
        securityProfileArn: String? = nil,
        securityProfileDescription: String? = nil,
        securityProfileName: String? = nil,
        version: Int = 0
    )
    {
        self.additionalMetricsToRetain = additionalMetricsToRetain
        self.additionalMetricsToRetainV2 = additionalMetricsToRetainV2
        self.alertTargets = alertTargets
        self.behaviors = behaviors
        self.creationDate = creationDate
        self.lastModifiedDate = lastModifiedDate
        self.securityProfileArn = securityProfileArn
        self.securityProfileDescription = securityProfileDescription
        self.securityProfileName = securityProfileName
        self.version = version
    }
}

extension UpdateSecurityProfileOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateSecurityProfileOutputResponse(additionalMetricsToRetain: \(String(describing: additionalMetricsToRetain)), additionalMetricsToRetainV2: \(String(describing: additionalMetricsToRetainV2)), alertTargets: \(String(describing: alertTargets)), behaviors: \(String(describing: behaviors)), creationDate: \(String(describing: creationDate)), lastModifiedDate: \(String(describing: lastModifiedDate)), securityProfileArn: \(String(describing: securityProfileArn)), securityProfileDescription: \(String(describing: securityProfileDescription)), securityProfileName: \(String(describing: securityProfileName)), version: \(String(describing: version)))"}
}