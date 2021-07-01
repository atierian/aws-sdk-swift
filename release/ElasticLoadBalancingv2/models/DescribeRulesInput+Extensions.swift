// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeRulesInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeRulesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeRulesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeRulesInput>
    public typealias MOutput = OperationOutput<DescribeRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeRulesOutputError>
}

public struct DescribeRulesInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeRulesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeRulesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeRulesInput>
    public typealias MOutput = OperationOutput<DescribeRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeRulesOutputError>
}

public struct DescribeRulesInputBodyMiddleware: Middleware {
    public let id: String = "DescribeRulesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeRulesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeRulesInput>
    public typealias MOutput = OperationOutput<DescribeRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeRulesOutputError>
}

extension DescribeRulesInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let listenerArn = listenerArn {
            try container.encode(listenerArn, forKey: Key("ListenerArn"))
        }
        if let marker = marker {
            try container.encode(marker, forKey: Key("Marker"))
        }
        if let pageSize = pageSize {
            try container.encode(pageSize, forKey: Key("PageSize"))
        }
        if let ruleArns = ruleArns {
            var ruleArnsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("RuleArns"))
            for (index0, rulearn0) in ruleArns.enumerated() {
                try ruleArnsContainer.encode(rulearn0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("DescribeRules", forKey:Key("Action"))
        try container.encode("2015-12-01", forKey:Key("Version"))
    }
}