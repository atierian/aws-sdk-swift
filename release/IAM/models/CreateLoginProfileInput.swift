// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateLoginProfileInput: Equatable {
    /// <p>The new password for the user.</p>
    ///         <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    ///     that is used to validate this parameter is a string of characters. That string can include almost any printable
    ///     ASCII character from the space (<code>\u0020</code>) through the end of the ASCII character range (<code>\u00FF</code>).
    ///     You can also include the tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and carriage return (<code>\u000D</code>)
    ///     characters. Any of these characters are valid in a password. However, many tools, such
    ///     as the AWS Management Console, might restrict the ability to type certain characters because they have
    ///     special meaning within that tool.</p>
    public let password: String?
    /// <p>Specifies whether the user is required to set a new password on next sign-in.</p>
    public let passwordResetRequired: Bool
    /// <p>The name of the IAM user to create a password for. The user must already
    ///             exist.</p>
    ///         <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    ///     characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    public let userName: String?

    public init (
        password: String? = nil,
        passwordResetRequired: Bool = false,
        userName: String? = nil
    )
    {
        self.password = password
        self.passwordResetRequired = passwordResetRequired
        self.userName = userName
    }
}

extension CreateLoginProfileInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateLoginProfileInput(password: \(String(describing: password)), passwordResetRequired: \(String(describing: passwordResetRequired)), userName: \(String(describing: userName)))"}
}