// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Information about parameter usage.</p>
public struct ParameterHistory: Equatable {
    /// <p>Parameter names can include the following letters and symbols.</p>
    ///          <p>a-zA-Z0-9_.-</p>
    public let allowedPattern: String?
    /// <p>The data type of the parameter, such as <code>text</code> or <code>aws:ec2:image</code>. The
    ///    default is <code>text</code>.</p>
    public let dataType: String?
    /// <p>Information about the parameter.</p>
    public let description: String?
    /// <p>The ID of the query key used for this parameter.</p>
    public let keyId: String?
    /// <p>Labels assigned to the parameter version.</p>
    public let labels: [String]?
    /// <p>Date the parameter was last changed or updated.</p>
    public let lastModifiedDate: Date?
    /// <p>Amazon Resource Name (ARN) of the AWS user who last changed the parameter.</p>
    public let lastModifiedUser: String?
    /// <p>The name of the parameter.</p>
    public let name: String?
    /// <p>Information about the policies assigned to a parameter.</p>
    ///          <p>
    ///             <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html">Assigning parameter
    ///     policies</a> in the <i>AWS Systems Manager User Guide</i>.</p>
    public let policies: [ParameterInlinePolicy]?
    /// <p>The parameter tier.</p>
    public let tier: ParameterTier?
    /// <p>The type of parameter used.</p>
    public let type: ParameterType?
    /// <p>The parameter value.</p>
    public let value: String?
    /// <p>The parameter version.</p>
    public let version: Int

    public init (
        allowedPattern: String? = nil,
        dataType: String? = nil,
        description: String? = nil,
        keyId: String? = nil,
        labels: [String]? = nil,
        lastModifiedDate: Date? = nil,
        lastModifiedUser: String? = nil,
        name: String? = nil,
        policies: [ParameterInlinePolicy]? = nil,
        tier: ParameterTier? = nil,
        type: ParameterType? = nil,
        value: String? = nil,
        version: Int = 0
    )
    {
        self.allowedPattern = allowedPattern
        self.dataType = dataType
        self.description = description
        self.keyId = keyId
        self.labels = labels
        self.lastModifiedDate = lastModifiedDate
        self.lastModifiedUser = lastModifiedUser
        self.name = name
        self.policies = policies
        self.tier = tier
        self.type = type
        self.value = value
        self.version = version
    }
}

extension ParameterHistory: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ParameterHistory(allowedPattern: \(String(describing: allowedPattern)), dataType: \(String(describing: dataType)), description: \(String(describing: description)), keyId: \(String(describing: keyId)), labels: \(String(describing: labels)), lastModifiedDate: \(String(describing: lastModifiedDate)), lastModifiedUser: \(String(describing: lastModifiedUser)), name: \(String(describing: name)), policies: \(String(describing: policies)), tier: \(String(describing: tier)), type: \(String(describing: type)), value: \(String(describing: value)), version: \(String(describing: version)))"}
}