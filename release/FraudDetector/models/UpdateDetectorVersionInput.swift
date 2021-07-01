// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateDetectorVersionInput: Equatable {
    /// <p>The detector version description. </p>
    public let description: String?
    /// <p>The parent detector ID for the detector version you want to update.</p>
    public let detectorId: String?
    /// <p>The detector version ID. </p>
    public let detectorVersionId: String?
    /// <p>The Amazon SageMaker model endpoints to include in the detector version.</p>
    public let externalModelEndpoints: [String]?
    /// <p>The model versions to include in the detector version.</p>
    public let modelVersions: [ModelVersion]?
    /// <p>The rule execution mode to add to the detector.</p>
    /// 	        <p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
    /// 	        <p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. You can define and edit the rule mode at the detector version level, when it is in draft status.</p>
    ///          <p>The default behavior is <code>FIRST_MATCHED</code>.</p>
    public let ruleExecutionMode: RuleExecutionMode?
    /// <p>The rules to include in the detector version.</p>
    public let rules: [Rule]?

    public init (
        description: String? = nil,
        detectorId: String? = nil,
        detectorVersionId: String? = nil,
        externalModelEndpoints: [String]? = nil,
        modelVersions: [ModelVersion]? = nil,
        ruleExecutionMode: RuleExecutionMode? = nil,
        rules: [Rule]? = nil
    )
    {
        self.description = description
        self.detectorId = detectorId
        self.detectorVersionId = detectorVersionId
        self.externalModelEndpoints = externalModelEndpoints
        self.modelVersions = modelVersions
        self.ruleExecutionMode = ruleExecutionMode
        self.rules = rules
    }
}

extension UpdateDetectorVersionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateDetectorVersionInput(description: \(String(describing: description)), detectorId: \(String(describing: detectorId)), detectorVersionId: \(String(describing: detectorVersionId)), externalModelEndpoints: \(String(describing: externalModelEndpoints)), modelVersions: \(String(describing: modelVersions)), ruleExecutionMode: \(String(describing: ruleExecutionMode)), rules: \(String(describing: rules)))"}
}