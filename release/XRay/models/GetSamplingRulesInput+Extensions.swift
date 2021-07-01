// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetSamplingRulesInputHeadersMiddleware: Middleware {
    public let id: String = "GetSamplingRulesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSamplingRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSamplingRulesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSamplingRulesInput>
    public typealias MOutput = OperationOutput<GetSamplingRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSamplingRulesOutputError>
}

public struct GetSamplingRulesInputQueryItemMiddleware: Middleware {
    public let id: String = "GetSamplingRulesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSamplingRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSamplingRulesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSamplingRulesInput>
    public typealias MOutput = OperationOutput<GetSamplingRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSamplingRulesOutputError>
}

public struct GetSamplingRulesInputBodyMiddleware: Middleware {
    public let id: String = "GetSamplingRulesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSamplingRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSamplingRulesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetSamplingRulesInput>
    public typealias MOutput = OperationOutput<GetSamplingRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSamplingRulesOutputError>
}

extension GetSamplingRulesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}