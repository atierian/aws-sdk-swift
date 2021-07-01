// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateAssessmentTargetInput: Equatable {
    /// <p>The ARN of the assessment target that you want to update.</p>
    public let assessmentTargetArn: String?
    /// <p>The name of the assessment target that you want to update.</p>
    public let assessmentTargetName: String?
    /// <p>The ARN of the resource group that is used to specify the new resource group to
    ///          associate with the assessment target.</p>
    public let resourceGroupArn: String?

    public init (
        assessmentTargetArn: String? = nil,
        assessmentTargetName: String? = nil,
        resourceGroupArn: String? = nil
    )
    {
        self.assessmentTargetArn = assessmentTargetArn
        self.assessmentTargetName = assessmentTargetName
        self.resourceGroupArn = resourceGroupArn
    }
}

extension UpdateAssessmentTargetInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateAssessmentTargetInput(assessmentTargetArn: \(String(describing: assessmentTargetArn)), assessmentTargetName: \(String(describing: assessmentTargetName)), resourceGroupArn: \(String(describing: resourceGroupArn)))"}
}