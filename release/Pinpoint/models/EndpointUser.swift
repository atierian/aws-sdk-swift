// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies data for one or more attributes that describe the user who's associated with an endpoint.</p>
public struct EndpointUser: Equatable {
    /// <p>One or more custom attributes that describe the user by associating a name with an array of values. For example, the value of an attribute named Interests might be: ["Science", "Music", "Travel"]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive.</p> <p>An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign (#), colon (:), question mark (?), backslash (\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.</p>
    public let userAttributes: [String:[String]]?
    /// <p>The unique identifier for the user.</p>
    public let userId: String?

    public init (
        userAttributes: [String:[String]]? = nil,
        userId: String? = nil
    )
    {
        self.userAttributes = userAttributes
        self.userId = userId
    }
}

extension EndpointUser: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EndpointUser(userAttributes: \(String(describing: userAttributes)), userId: \(String(describing: userId)))"}
}