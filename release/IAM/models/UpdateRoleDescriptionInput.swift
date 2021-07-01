// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateRoleDescriptionInput: Equatable {
    /// <p>The new description that you want to apply to the specified role.</p>
    public let description: String?
    /// <p>The name of the role that you want to modify.</p>
    public let roleName: String?

    public init (
        description: String? = nil,
        roleName: String? = nil
    )
    {
        self.description = description
        self.roleName = roleName
    }
}

extension UpdateRoleDescriptionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateRoleDescriptionInput(description: \(String(describing: description)), roleName: \(String(describing: roleName)))"}
}