// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ReportInstanceStatusInput: Equatable {
    /// <p>Descriptive text about the health state of your instance.</p>
    public let description: String?
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The time at which the reported instance health state ended.</p>
    public let endTime: Date?
    /// <p>The instances.</p>
    public let instances: [String]?
    /// <p>The reason codes that describe the health state of your instance.</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                     <code>instance-stuck-in-state</code>: My instance is stuck in a state.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>unresponsive</code>: My instance is unresponsive.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>not-accepting-credentials</code>: My instance is not accepting my
    ///                     credentials.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>password-not-available</code>: A password is not available for my
    ///                     instance.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>performance-network</code>: My instance is experiencing performance
    ///                     problems that I believe are network related.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>performance-instance-store</code>: My instance is experiencing performance
    ///                     problems that I believe are related to the instance stores.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>performance-ebs-volume</code>: My instance is experiencing performance
    ///                     problems that I believe are related to an EBS volume.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>performance-other</code>: My instance is experiencing performance
    ///                     problems.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>other</code>: [explain using the description parameter]</p>
    ///             </li>
    ///          </ul>
    public let reasonCodes: [ReportInstanceReasonCodes]?
    /// <p>The time at which the reported instance health state began.</p>
    public let startTime: Date?
    /// <p>The status of all instances listed.</p>
    public let status: ReportStatusType?

    public init (
        description: String? = nil,
        dryRun: Bool = false,
        endTime: Date? = nil,
        instances: [String]? = nil,
        reasonCodes: [ReportInstanceReasonCodes]? = nil,
        startTime: Date? = nil,
        status: ReportStatusType? = nil
    )
    {
        self.description = description
        self.dryRun = dryRun
        self.endTime = endTime
        self.instances = instances
        self.reasonCodes = reasonCodes
        self.startTime = startTime
        self.status = status
    }
}

extension ReportInstanceStatusInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReportInstanceStatusInput(description: \(String(describing: description)), dryRun: \(String(describing: dryRun)), endTime: \(String(describing: endTime)), instances: \(String(describing: instances)), reasonCodes: \(String(describing: reasonCodes)), startTime: \(String(describing: startTime)), status: \(String(describing: status)))"}
}