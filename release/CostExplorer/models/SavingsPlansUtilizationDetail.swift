// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A single daily or monthly Savings Plans utilization rate, and details for your account. A management account in an organization have access to member accounts. You can use <code>GetDimensionValues</code> to determine the possible dimension values. </p>
public struct SavingsPlansUtilizationDetail: Equatable {
    /// <p>The total amortized commitment for a Savings Plans. Includes the sum of the upfront and recurring Savings Plans fees.</p>
    public let amortizedCommitment: SavingsPlansAmortizedCommitment?
    /// <p>The attribute that applies to a specific <code>Dimension</code>.</p>
    public let attributes: [String:String]?
    /// <p>The amount saved by using existing Savings Plans. Savings returns both net savings from savings plans as well as the <code>onDemandCostEquivalent</code> of the Savings Plans when considering the utilization rate.</p>
    public let savings: SavingsPlansSavings?
    /// <p>The unique Amazon Resource Name (ARN) for a particular Savings Plan.</p>
    public let savingsPlanArn: String?
    /// <p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads that are Savings Plans eligible.</p>
    public let utilization: SavingsPlansUtilization?

    public init (
        amortizedCommitment: SavingsPlansAmortizedCommitment? = nil,
        attributes: [String:String]? = nil,
        savings: SavingsPlansSavings? = nil,
        savingsPlanArn: String? = nil,
        utilization: SavingsPlansUtilization? = nil
    )
    {
        self.amortizedCommitment = amortizedCommitment
        self.attributes = attributes
        self.savings = savings
        self.savingsPlanArn = savingsPlanArn
        self.utilization = utilization
    }
}

extension SavingsPlansUtilizationDetail: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SavingsPlansUtilizationDetail(amortizedCommitment: \(String(describing: amortizedCommitment)), attributes: \(String(describing: attributes)), savings: \(String(describing: savings)), savingsPlanArn: \(String(describing: savingsPlanArn)), utilization: \(String(describing: utilization)))"}
}