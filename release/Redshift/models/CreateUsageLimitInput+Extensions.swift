// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateUsageLimitInputHeadersMiddleware: Middleware {
    public let id: String = "CreateUsageLimitInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateUsageLimitInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateUsageLimitOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateUsageLimitInput>
    public typealias MOutput = OperationOutput<CreateUsageLimitOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateUsageLimitOutputError>
}

public struct CreateUsageLimitInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateUsageLimitInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateUsageLimitInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateUsageLimitOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateUsageLimitInput>
    public typealias MOutput = OperationOutput<CreateUsageLimitOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateUsageLimitOutputError>
}

public struct CreateUsageLimitInputBodyMiddleware: Middleware {
    public let id: String = "CreateUsageLimitInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateUsageLimitInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateUsageLimitOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateUsageLimitInput>
    public typealias MOutput = OperationOutput<CreateUsageLimitOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateUsageLimitOutputError>
}

extension CreateUsageLimitInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if amount != 0 {
            try container.encode(amount, forKey: Key("Amount"))
        }
        if let breachAction = breachAction {
            try container.encode(breachAction, forKey: Key("BreachAction"))
        }
        if let clusterIdentifier = clusterIdentifier {
            try container.encode(clusterIdentifier, forKey: Key("ClusterIdentifier"))
        }
        if let featureType = featureType {
            try container.encode(featureType, forKey: Key("FeatureType"))
        }
        if let limitType = limitType {
            try container.encode(limitType, forKey: Key("LimitType"))
        }
        if let period = period {
            try container.encode(period, forKey: Key("Period"))
        }
        if let tags = tags {
            var tagsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Tags"))
            for (index0, tag0) in tags.enumerated() {
                try tagsContainer.encode(tag0, forKey: Key("Tag.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("CreateUsageLimit", forKey:Key("Action"))
        try container.encode("2012-12-01", forKey:Key("Version"))
    }
}