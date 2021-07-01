// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains details about the specified entity (user or role).</p>
///          <p>This data type is an element of the <a>EntityDetails</a> object.</p>
public struct EntityInfo: Equatable {
    /// <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS resources.</p>
    ///          <p>For more information about ARNs, go to <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    ///          the <i>AWS General Reference</i>. </p>
    public let arn: String?
    /// <p>The identifier of the entity (user or role).</p>
    public let id: String?
    /// <p>The name of the entity (user or role).</p>
    public let name: String?
    /// <p>The path to the entity (user or role). For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    ///             identifiers</a> in the <i>IAM User Guide</i>. </p>
    public let path: String?
    /// <p>The type of entity (user or role).</p>
    public let type: PolicyOwnerEntityType?

    public init (
        arn: String? = nil,
        id: String? = nil,
        name: String? = nil,
        path: String? = nil,
        type: PolicyOwnerEntityType? = nil
    )
    {
        self.arn = arn
        self.id = id
        self.name = name
        self.path = path
        self.type = type
    }
}

extension EntityInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EntityInfo(arn: \(String(describing: arn)), id: \(String(describing: id)), name: \(String(describing: name)), path: \(String(describing: path)), type: \(String(describing: type)))"}
}