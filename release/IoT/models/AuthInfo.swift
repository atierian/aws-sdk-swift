// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A collection of authorization information.</p>
public struct AuthInfo: Equatable {
    /// <p>The type of action for which the principal is being authorized.</p>
    public let actionType: ActionType?
    /// <p>The resources for which the principal is being authorized to perform the specified
    ///          action.</p>
    public let resources: [String]?

    public init (
        actionType: ActionType? = nil,
        resources: [String]? = nil
    )
    {
        self.actionType = actionType
        self.resources = resources
    }
}

extension AuthInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AuthInfo(actionType: \(String(describing: actionType)), resources: \(String(describing: resources)))"}
}