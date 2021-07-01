// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetSampledRequestsInputHeadersMiddleware: Middleware {
    public let id: String = "GetSampledRequestsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSampledRequestsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSampledRequestsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSampledRequestsInput>
    public typealias MOutput = OperationOutput<GetSampledRequestsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSampledRequestsOutputError>
}

public struct GetSampledRequestsInputQueryItemMiddleware: Middleware {
    public let id: String = "GetSampledRequestsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSampledRequestsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSampledRequestsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSampledRequestsInput>
    public typealias MOutput = OperationOutput<GetSampledRequestsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSampledRequestsOutputError>
}

public struct GetSampledRequestsInputBodyMiddleware: Middleware {
    public let id: String = "GetSampledRequestsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSampledRequestsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSampledRequestsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSampledRequestsInput>
    public typealias MOutput = OperationOutput<GetSampledRequestsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSampledRequestsOutputError>
}

extension GetSampledRequestsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxItems = "MaxItems"
        case ruleMetricName = "RuleMetricName"
        case scope = "Scope"
        case timeWindow = "TimeWindow"
        case webAclArn = "WebAclArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if maxItems != 0 {
            try encodeContainer.encode(maxItems, forKey: .maxItems)
        }
        if let ruleMetricName = ruleMetricName {
            try encodeContainer.encode(ruleMetricName, forKey: .ruleMetricName)
        }
        if let scope = scope {
            try encodeContainer.encode(scope.rawValue, forKey: .scope)
        }
        if let timeWindow = timeWindow {
            try encodeContainer.encode(timeWindow, forKey: .timeWindow)
        }
        if let webAclArn = webAclArn {
            try encodeContainer.encode(webAclArn, forKey: .webAclArn)
        }
    }
}