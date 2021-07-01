// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Updates an Api.</p>
public struct UpdateApiInput: Equatable {
    /// <p>The API identifier.</p>
    public let apiId: String?
    /// <p>An API key selection expression. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API Key Selection Expressions</a>.</p>
    public let apiKeySelectionExpression: String?
    /// <p>A CORS configuration. Supported only for HTTP APIs.</p>
    public let corsConfiguration: Cors?
    /// <p>This property is part of quick create. It specifies the credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, don't specify this parameter. Currently, this property is not used for HTTP integrations. If provided, this value replaces the credentials associated with the quick create integration. Supported only for HTTP APIs.</p>
    public let credentialsArn: String?
    /// <p>The description of the API.</p>
    public let description: String?
    /// <p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>
    public let disableExecuteApiEndpoint: Bool
    /// <p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>
    public let disableSchemaValidation: Bool
    /// <p>The name of the API.</p>
    public let name: String?
    /// <p>This property is part of quick create. If not specified, the route created using quick create is kept. Otherwise, this value replaces the route key of the quick create route. Additional routes may still be added after the API is updated. Supported only for HTTP APIs.</p>
    public let routeKey: String?
    /// <p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>
    public let routeSelectionExpression: String?
    /// <p>This property is part of quick create. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. The value provided updates the integration URI and integration type. You can update a quick-created target, but you can't remove it from an API. Supported only for HTTP APIs.</p>
    public let target: String?
    /// <p>A version identifier for the API.</p>
    public let version: String?

    public init (
        apiId: String? = nil,
        apiKeySelectionExpression: String? = nil,
        corsConfiguration: Cors? = nil,
        credentialsArn: String? = nil,
        description: String? = nil,
        disableExecuteApiEndpoint: Bool = false,
        disableSchemaValidation: Bool = false,
        name: String? = nil,
        routeKey: String? = nil,
        routeSelectionExpression: String? = nil,
        target: String? = nil,
        version: String? = nil
    )
    {
        self.apiId = apiId
        self.apiKeySelectionExpression = apiKeySelectionExpression
        self.corsConfiguration = corsConfiguration
        self.credentialsArn = credentialsArn
        self.description = description
        self.disableExecuteApiEndpoint = disableExecuteApiEndpoint
        self.disableSchemaValidation = disableSchemaValidation
        self.name = name
        self.routeKey = routeKey
        self.routeSelectionExpression = routeSelectionExpression
        self.target = target
        self.version = version
    }
}

extension UpdateApiInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateApiInput(apiId: \(String(describing: apiId)), apiKeySelectionExpression: \(String(describing: apiKeySelectionExpression)), corsConfiguration: \(String(describing: corsConfiguration)), credentialsArn: \(String(describing: credentialsArn)), description: \(String(describing: description)), disableExecuteApiEndpoint: \(String(describing: disableExecuteApiEndpoint)), disableSchemaValidation: \(String(describing: disableSchemaValidation)), name: \(String(describing: name)), routeKey: \(String(describing: routeKey)), routeSelectionExpression: \(String(describing: routeSelectionExpression)), target: \(String(describing: target)), version: \(String(describing: version)))"}
}