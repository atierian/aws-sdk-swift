// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct DeleteEvaluationResultsInput: Equatable {
    /// <p>The name of the AWS Config rule for which you want to delete
    /// 			the evaluation results.</p>
    public let configRuleName: String?

    public init (
        configRuleName: String? = nil
    )
    {
        self.configRuleName = configRuleName
    }
}

extension DeleteEvaluationResultsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteEvaluationResultsInput(configRuleName: \(String(describing: configRuleName)))"}
}