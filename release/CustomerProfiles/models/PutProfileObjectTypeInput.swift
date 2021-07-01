// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutProfileObjectTypeInput: Equatable {
    /// <p>Indicates whether a profile should be created when data is received if one doesn’t exist
    ///          for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
    ///          flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
    ///          associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
    ///          is found, then the service creates a new standard profile.</p>
    public let allowProfileCreation: Bool
    /// <p>Description of the profile object type.</p>
    public let description: String?
    /// <p>The unique name of the domain.</p>
    public let domainName: String?
    /// <p>The customer-provided key to encrypt the profile object that will be created in this
    ///          profile object type.</p>
    public let encryptionKey: String?
    /// <p>The number of days until the data in the object expires.</p>
    public let expirationDays: Int?
    /// <p>A map of the name and ObjectType field.</p>
    public let fields: [String:ObjectTypeField]?
    /// <p>A list of unique keys that can be used to map data to the profile.</p>
    public let keys: [String:[ObjectTypeKey]]?
    /// <p>The name of the profile object type.</p>
    public let objectTypeName: String?
    /// <p>The tags used to organize, track, or control access for this resource.</p>
    public let tags: [String:String]?
    /// <p>A unique identifier for the object template.</p>
    public let templateId: String?

    public init (
        allowProfileCreation: Bool = false,
        description: String? = nil,
        domainName: String? = nil,
        encryptionKey: String? = nil,
        expirationDays: Int? = nil,
        fields: [String:ObjectTypeField]? = nil,
        keys: [String:[ObjectTypeKey]]? = nil,
        objectTypeName: String? = nil,
        tags: [String:String]? = nil,
        templateId: String? = nil
    )
    {
        self.allowProfileCreation = allowProfileCreation
        self.description = description
        self.domainName = domainName
        self.encryptionKey = encryptionKey
        self.expirationDays = expirationDays
        self.fields = fields
        self.keys = keys
        self.objectTypeName = objectTypeName
        self.tags = tags
        self.templateId = templateId
    }
}

extension PutProfileObjectTypeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutProfileObjectTypeInput(allowProfileCreation: \(String(describing: allowProfileCreation)), description: \(String(describing: description)), domainName: \(String(describing: domainName)), encryptionKey: \(String(describing: encryptionKey)), expirationDays: \(String(describing: expirationDays)), fields: \(String(describing: fields)), keys: \(String(describing: keys)), objectTypeName: \(String(describing: objectTypeName)), tags: \(String(describing: tags)), templateId: \(String(describing: templateId)))"}
}