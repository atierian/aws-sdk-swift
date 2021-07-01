// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct CreateDBSecurityGroupInput: Equatable {
    /// <p>The description for the DB security group.</p>
    public let dBSecurityGroupDescription: String?
    /// <p>The name for the DB security group. This value is stored as a lowercase string.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    ///             </li>
    ///             <li>
    ///                <p>First character must be a letter</p>
    ///             </li>
    ///             <li>
    ///                <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    ///             </li>
    ///             <li>
    ///                <p>Must not be "Default"</p>
    ///             </li>
    ///          </ul>
    ///          <p>Example: <code>mysecuritygroup</code>
    ///          </p>
    public let dBSecurityGroupName: String?
    /// <p>Tags to assign to the DB security group.</p>
    public let tags: [Tag]?

    public init (
        dBSecurityGroupDescription: String? = nil,
        dBSecurityGroupName: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.dBSecurityGroupDescription = dBSecurityGroupDescription
        self.dBSecurityGroupName = dBSecurityGroupName
        self.tags = tags
    }
}

extension CreateDBSecurityGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDBSecurityGroupInput(dBSecurityGroupDescription: \(String(describing: dBSecurityGroupDescription)), dBSecurityGroupName: \(String(describing: dBSecurityGroupName)), tags: \(String(describing: tags)))"}
}