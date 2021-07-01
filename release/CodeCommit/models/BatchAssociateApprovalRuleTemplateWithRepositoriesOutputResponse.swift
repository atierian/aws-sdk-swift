// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchAssociateApprovalRuleTemplateWithRepositoriesOutputResponse: Equatable {
    /// <p>A list of names of the repositories that have been associated with the template.</p>
    public let associatedRepositoryNames: [String]?
    /// <p>A list of any errors that might have occurred while attempting to create the association between the template and the repositories.</p>
    public let errors: [BatchAssociateApprovalRuleTemplateWithRepositoriesError]?

    public init (
        associatedRepositoryNames: [String]? = nil,
        errors: [BatchAssociateApprovalRuleTemplateWithRepositoriesError]? = nil
    )
    {
        self.associatedRepositoryNames = associatedRepositoryNames
        self.errors = errors
    }
}

extension BatchAssociateApprovalRuleTemplateWithRepositoriesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchAssociateApprovalRuleTemplateWithRepositoriesOutputResponse(associatedRepositoryNames: \(String(describing: associatedRepositoryNames)), errors: \(String(describing: errors)))"}
}