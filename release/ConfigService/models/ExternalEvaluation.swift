// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Identifies an AWS resource and indicates whether it complies with the AWS Config rule that it was evaluated against.</p>
public struct ExternalEvaluation: Equatable {
    /// <p>Supplementary information about the reason of compliance. For example, this task was completed on a specific date.</p>
    public let annotation: String?
    /// <p>The evaluated compliance resource ID. AWS Config accepts only AWS account ID.</p>
    public let complianceResourceId: String?
    /// <p>The evaluated compliance resource type. AWS Config accepts <code>AWS::::Account</code> resource type.</p>
    public let complianceResourceType: String?
    /// <p>The compliance of the AWS resource. The valid values are <code>COMPLIANT, NON_COMPLIANT, </code> and <code>NOT_APPLICABLE</code>.</p>
    public let complianceType: ComplianceType?
    /// <p>The time when the compliance was recorded. </p>
    public let orderingTimestamp: Date?

    public init (
        annotation: String? = nil,
        complianceResourceId: String? = nil,
        complianceResourceType: String? = nil,
        complianceType: ComplianceType? = nil,
        orderingTimestamp: Date? = nil
    )
    {
        self.annotation = annotation
        self.complianceResourceId = complianceResourceId
        self.complianceResourceType = complianceResourceType
        self.complianceType = complianceType
        self.orderingTimestamp = orderingTimestamp
    }
}

extension ExternalEvaluation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ExternalEvaluation(annotation: \(String(describing: annotation)), complianceResourceId: \(String(describing: complianceResourceId)), complianceResourceType: \(String(describing: complianceResourceType)), complianceType: \(String(describing: complianceType)), orderingTimestamp: \(String(describing: orderingTimestamp)))"}
}