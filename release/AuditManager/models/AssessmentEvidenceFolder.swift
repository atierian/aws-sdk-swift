// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>
/// The folder in which AWS Audit Manager stores evidence for an assessment.
/// </p>
public struct AssessmentEvidenceFolder: Equatable {
    /// <p>
    ///    The identifier for the specified assessment.
    /// </p>
    public let assessmentId: String?
    /// <p>
    ///          The total count of evidence included in the assessment report.
    ///       </p>
    public let assessmentReportSelectionCount: Int
    /// <p>
    ///    The name of the user who created the evidence folder.
    /// </p>
    public let author: String?
    /// <p>
    ///
    ///    The unique identifier for the specified control.
    /// </p>
    public let controlId: String?
    /// <p>
    ///          The name of the control.
    ///       </p>
    public let controlName: String?
    /// <p>
    ///    The identifier for the control set.
    /// </p>
    public let controlSetId: String?
    /// <p>
    ///    The AWS service from which the evidence was collected.
    /// </p>
    public let dataSource: String?
    /// <p>
    ///          The date when the first evidence was added to the evidence folder.
    ///       </p>
    public let date: Date?
    /// <p>
    ///    The total number of AWS resources assessed to generate the evidence.
    /// </p>
    public let evidenceAwsServiceSourceCount: Int
    /// <p>
    ///          The number of evidence that falls under the compliance check category. This evidence is collected from AWS Config or AWS Security Hub.
    ///       </p>
    public let evidenceByTypeComplianceCheckCount: Int
    /// <p>
    ///          The total number of issues that were reported directly from AWS Security
    ///          Hub, AWS Config, or both.
    ///       </p>
    public let evidenceByTypeComplianceCheckIssuesCount: Int
    /// <p>
    ///          The number of evidence that falls under the configuration data category. This evidence is collected from configuration snapshots of other AWS services such as Amazon EC2, Amazon S3, or IAM.
    ///       </p>
    public let evidenceByTypeConfigurationDataCount: Int
    /// <p>
    ///          The number of evidence that falls under the manual category. This evidence is imported manually.
    ///       </p>
    public let evidenceByTypeManualCount: Int
    /// <p>
    ///          The number of evidence that falls under the user activity category. This evidence is collected from AWS CloudTrail logs.
    ///       </p>
    public let evidenceByTypeUserActivityCount: Int
    /// <p>
    ///          The amount of evidence included in the evidence folder.
    ///       </p>
    public let evidenceResourcesIncludedCount: Int
    /// <p>
    /// The identifier for the folder in which evidence is stored.
    /// </p>
    public let id: String?
    /// <p>
    /// The name of the specified evidence folder.
    /// </p>
    public let name: String?
    /// <p>
    ///          The total amount of evidence in the evidence folder.
    ///       </p>
    public let totalEvidence: Int

    public init (
        assessmentId: String? = nil,
        assessmentReportSelectionCount: Int = 0,
        author: String? = nil,
        controlId: String? = nil,
        controlName: String? = nil,
        controlSetId: String? = nil,
        dataSource: String? = nil,
        date: Date? = nil,
        evidenceAwsServiceSourceCount: Int = 0,
        evidenceByTypeComplianceCheckCount: Int = 0,
        evidenceByTypeComplianceCheckIssuesCount: Int = 0,
        evidenceByTypeConfigurationDataCount: Int = 0,
        evidenceByTypeManualCount: Int = 0,
        evidenceByTypeUserActivityCount: Int = 0,
        evidenceResourcesIncludedCount: Int = 0,
        id: String? = nil,
        name: String? = nil,
        totalEvidence: Int = 0
    )
    {
        self.assessmentId = assessmentId
        self.assessmentReportSelectionCount = assessmentReportSelectionCount
        self.author = author
        self.controlId = controlId
        self.controlName = controlName
        self.controlSetId = controlSetId
        self.dataSource = dataSource
        self.date = date
        self.evidenceAwsServiceSourceCount = evidenceAwsServiceSourceCount
        self.evidenceByTypeComplianceCheckCount = evidenceByTypeComplianceCheckCount
        self.evidenceByTypeComplianceCheckIssuesCount = evidenceByTypeComplianceCheckIssuesCount
        self.evidenceByTypeConfigurationDataCount = evidenceByTypeConfigurationDataCount
        self.evidenceByTypeManualCount = evidenceByTypeManualCount
        self.evidenceByTypeUserActivityCount = evidenceByTypeUserActivityCount
        self.evidenceResourcesIncludedCount = evidenceResourcesIncludedCount
        self.id = id
        self.name = name
        self.totalEvidence = totalEvidence
    }
}

extension AssessmentEvidenceFolder: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AssessmentEvidenceFolder(assessmentId: \(String(describing: assessmentId)), assessmentReportSelectionCount: \(String(describing: assessmentReportSelectionCount)), author: \(String(describing: author)), controlId: \(String(describing: controlId)), controlName: \(String(describing: controlName)), controlSetId: \(String(describing: controlSetId)), dataSource: \(String(describing: dataSource)), date: \(String(describing: date)), evidenceAwsServiceSourceCount: \(String(describing: evidenceAwsServiceSourceCount)), evidenceByTypeComplianceCheckCount: \(String(describing: evidenceByTypeComplianceCheckCount)), evidenceByTypeComplianceCheckIssuesCount: \(String(describing: evidenceByTypeComplianceCheckIssuesCount)), evidenceByTypeConfigurationDataCount: \(String(describing: evidenceByTypeConfigurationDataCount)), evidenceByTypeManualCount: \(String(describing: evidenceByTypeManualCount)), evidenceByTypeUserActivityCount: \(String(describing: evidenceByTypeUserActivityCount)), evidenceResourcesIncludedCount: \(String(describing: evidenceResourcesIncludedCount)), id: \(String(describing: id)), name: \(String(describing: name)), totalEvidence: \(String(describing: totalEvidence)))"}
}