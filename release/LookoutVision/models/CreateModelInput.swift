// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateModelInput: Equatable {
    /// <p>ClientToken is an idempotency token that ensures a call to <code>CreateModel</code>
    ///       completes only once.  You choose the value to pass. For example, An issue,
    ///       such as an network outage, might prevent you from getting a response from <code>CreateModel</code>.
    ///       In this case, safely retry your call
    ///        to <code>CreateModel</code> by using the same <code>ClientToken</code> parameter value. An error occurs
    ///        if the other input parameters are not the same as in the first request. Using a different
    ///        value for <code>ClientToken</code> is considered a new call to <code>CreateModel</code>. An idempotency
    ///        token is active for 8 hours.</p>
    public var clientToken: String?
    /// <p>A description for the version of the model.</p>
    public let description: String?
    /// <p>The identifier for your AWS Key Management Service (AWS KMS) customer master key (CMK).
    ///          The key is used to encrypt training and test images copied into the service for model training. Your
    ///          source images are unaffected.
    ///          If this parameter is not specified, the copied images are encrypted by a key that AWS owns and manages.</p>
    public let kmsKeyId: String?
    /// <p>The location where Amazon Lookout for Vision saves the training results.</p>
    public let outputConfig: OutputConfig?
    /// <p>The name of the project in which you want to create a model version.</p>
    public let projectName: String?
    /// <p>A set of tags (key-value pairs) that you want to attach to the model.</p>
    public let tags: [Tag]?

    public init (
        clientToken: String? = nil,
        description: String? = nil,
        kmsKeyId: String? = nil,
        outputConfig: OutputConfig? = nil,
        projectName: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.clientToken = clientToken
        self.description = description
        self.kmsKeyId = kmsKeyId
        self.outputConfig = outputConfig
        self.projectName = projectName
        self.tags = tags
    }
}

extension CreateModelInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateModelInput(clientToken: \(String(describing: clientToken)), description: \(String(describing: description)), kmsKeyId: \(String(describing: kmsKeyId)), outputConfig: \(String(describing: outputConfig)), projectName: \(String(describing: projectName)), tags: \(String(describing: tags)))"}
}