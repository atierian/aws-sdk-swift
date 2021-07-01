// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreatePartnerEventSourceInput: Equatable {
    /// <p>The AWS account ID that is permitted to create a matching partner event bus for this
    ///       partner event source.</p>
    public let account: String?
    /// <p>The name of the partner event source. This name must be unique and must be in the format
    ///           <code>
    ///                <i>partner_name</i>/<i>event_namespace</i>/<i>event_name</i>
    ///             </code>.
    ///       The AWS account that wants to use this partner event source must create a partner event bus
    ///       with a name that matches the name of the partner event source.</p>
    public let name: String?

    public init (
        account: String? = nil,
        name: String? = nil
    )
    {
        self.account = account
        self.name = name
    }
}

extension CreatePartnerEventSourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreatePartnerEventSourceInput(account: \(String(describing: account)), name: \(String(describing: name)))"}
}