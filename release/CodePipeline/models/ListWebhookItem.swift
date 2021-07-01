// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The detail returned for each webhook after listing webhooks, such as the webhook
///             URL, the webhook name, and the webhook ARN.</p>
public struct ListWebhookItem: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the webhook.</p>
    public let arn: String?
    /// <p>The detail returned for each webhook, such as the webhook authentication type and
    ///             filter rules.</p>
    public let definition: WebhookDefinition?
    /// <p>The number code of the error.</p>
    public let errorCode: String?
    /// <p>The text of the error message about the webhook.</p>
    public let errorMessage: String?
    /// <p>The date and time a webhook was last successfully triggered, in timestamp
    ///             format.</p>
    public let lastTriggered: Date?
    /// <p>Specifies the tags applied to the webhook.</p>
    public let tags: [Tag]?
    /// <p>A unique URL generated by CodePipeline. When a POST request is made to this URL,
    ///             the defined pipeline is started as long as the body of the post request satisfies the
    ///             defined authentication and filtering conditions. Deleting and re-creating a webhook
    ///             makes the old URL invalid and generates a new one.</p>
    public let url: String?

    public init (
        arn: String? = nil,
        definition: WebhookDefinition? = nil,
        errorCode: String? = nil,
        errorMessage: String? = nil,
        lastTriggered: Date? = nil,
        tags: [Tag]? = nil,
        url: String? = nil
    )
    {
        self.arn = arn
        self.definition = definition
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.lastTriggered = lastTriggered
        self.tags = tags
        self.url = url
    }
}

extension ListWebhookItem: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListWebhookItem(arn: \(String(describing: arn)), definition: \(String(describing: definition)), errorCode: \(String(describing: errorCode)), errorMessage: \(String(describing: errorMessage)), lastTriggered: \(String(describing: lastTriggered)), tags: \(String(describing: tags)), url: \(String(describing: url)))"}
}