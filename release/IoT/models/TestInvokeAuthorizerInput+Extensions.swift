// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct TestInvokeAuthorizerInputHeadersMiddleware: Middleware {
    public let id: String = "TestInvokeAuthorizerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<TestInvokeAuthorizerInput>,
                  next: H) -> Swift.Result<OperationOutput<TestInvokeAuthorizerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<TestInvokeAuthorizerInput>
    public typealias MOutput = OperationOutput<TestInvokeAuthorizerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<TestInvokeAuthorizerOutputError>
}

public struct TestInvokeAuthorizerInputQueryItemMiddleware: Middleware {
    public let id: String = "TestInvokeAuthorizerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<TestInvokeAuthorizerInput>,
                  next: H) -> Swift.Result<OperationOutput<TestInvokeAuthorizerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<TestInvokeAuthorizerInput>
    public typealias MOutput = OperationOutput<TestInvokeAuthorizerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<TestInvokeAuthorizerOutputError>
}

public struct TestInvokeAuthorizerInputBodyMiddleware: Middleware {
    public let id: String = "TestInvokeAuthorizerInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<TestInvokeAuthorizerInput>,
                  next: H) -> Swift.Result<OperationOutput<TestInvokeAuthorizerOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<TestInvokeAuthorizerInput>
    public typealias MOutput = OperationOutput<TestInvokeAuthorizerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<TestInvokeAuthorizerOutputError>
}

extension TestInvokeAuthorizerInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case httpContext
        case mqttContext
        case tlsContext
        case token
        case tokenSignature
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let httpContext = httpContext {
            try encodeContainer.encode(httpContext, forKey: .httpContext)
        }
        if let mqttContext = mqttContext {
            try encodeContainer.encode(mqttContext, forKey: .mqttContext)
        }
        if let tlsContext = tlsContext {
            try encodeContainer.encode(tlsContext, forKey: .tlsContext)
        }
        if let token = token {
            try encodeContainer.encode(token, forKey: .token)
        }
        if let tokenSignature = tokenSignature {
            try encodeContainer.encode(tokenSignature, forKey: .tokenSignature)
        }
    }
}