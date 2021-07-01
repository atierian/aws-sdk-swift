// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes an auto scaling process that has been suspended.</p>
///         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html#process-types">Scaling processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
public struct SuspendedProcess: Equatable {
    /// <p>The name of the suspended process.</p>
    public let processName: String?
    /// <p>The reason that the process was suspended.</p>
    public let suspensionReason: String?

    public init (
        processName: String? = nil,
        suspensionReason: String? = nil
    )
    {
        self.processName = processName
        self.suspensionReason = suspensionReason
    }
}

extension SuspendedProcess: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SuspendedProcess(processName: \(String(describing: processName)), suspensionReason: \(String(describing: suspensionReason)))"}
}