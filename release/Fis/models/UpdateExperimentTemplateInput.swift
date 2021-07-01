// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateExperimentTemplateInput: Equatable {
    /// <p>The actions for the experiment.</p>
    public let actions: [String:UpdateExperimentTemplateActionInputItem]?
    /// <p>A description for the template.</p>
    public let description: String?
    /// <p>The ID of the experiment template.</p>
    public let id: String?
    /// <p>The Amazon Resource Name (ARN) of an IAM role that grants the AWS FIS service permission to perform service actions on your behalf.</p>
    public let roleArn: String?
    /// <p>The stop conditions for the experiment.</p>
    public let stopConditions: [UpdateExperimentTemplateStopConditionInput]?
    /// <p>The targets for the experiment.</p>
    public let targets: [String:UpdateExperimentTemplateTargetInput]?

    public init (
        actions: [String:UpdateExperimentTemplateActionInputItem]? = nil,
        description: String? = nil,
        id: String? = nil,
        roleArn: String? = nil,
        stopConditions: [UpdateExperimentTemplateStopConditionInput]? = nil,
        targets: [String:UpdateExperimentTemplateTargetInput]? = nil
    )
    {
        self.actions = actions
        self.description = description
        self.id = id
        self.roleArn = roleArn
        self.stopConditions = stopConditions
        self.targets = targets
    }
}

extension UpdateExperimentTemplateInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateExperimentTemplateInput(actions: \(String(describing: actions)), description: \(String(describing: description)), id: \(String(describing: id)), roleArn: \(String(describing: roleArn)), stopConditions: \(String(describing: stopConditions)), targets: \(String(describing: targets)))"}
}