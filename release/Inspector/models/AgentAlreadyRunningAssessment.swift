// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Used in the exception error that is thrown if you start an assessment run for an
///          assessment target that includes an EC2 instance that is already participating in another
///          started assessment run.</p>
public struct AgentAlreadyRunningAssessment: Equatable {
    /// <p>ID of the agent that is running on an EC2 instance that is already participating in
    ///          another started assessment run.</p>
    public let agentId: String?
    /// <p>The ARN of the assessment run that has already been started.</p>
    public let assessmentRunArn: String?

    public init (
        agentId: String? = nil,
        assessmentRunArn: String? = nil
    )
    {
        self.agentId = agentId
        self.assessmentRunArn = assessmentRunArn
    }
}

extension AgentAlreadyRunningAssessment: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AgentAlreadyRunningAssessment(agentId: \(String(describing: agentId)), assessmentRunArn: \(String(describing: assessmentRunArn)))"}
}