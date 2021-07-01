// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>You see this exception in the following cases: </p>
/// 		       <ul>
///             <li>
///                <p>For DeleteConfigRule, AWS Config is deleting this rule. Try your request again later.</p>
///             </li>
///             <li>
///                <p>For DeleteConfigRule, the rule is deleting your evaluation results. Try your request again later.</p>
///             </li>
///             <li>
///                <p>For DeleteConfigRule, a remediation action is associated with the rule and AWS Config cannot delete this rule. Delete the remediation action associated with the rule before deleting the rule and try your request again later.</p>
///             </li>
///             <li>
///                <p>For PutConfigOrganizationRule, organization config rule deletion is in progress. Try your request again later.</p>
///             </li>
///             <li>
///                <p>For DeleteOrganizationConfigRule, organization config rule creation is in progress. Try your request again later.</p>
///             </li>
///             <li>
///                <p>For PutConformancePack and PutOrganizationConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.</p>
///             </li>
///             <li>
///                <p>For DeleteConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.</p>
///             </li>
///          </ul>
public struct ResourceInUseException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>Error executing the command</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension ResourceInUseException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResourceInUseException(message: \(String(describing: message)))"}
}