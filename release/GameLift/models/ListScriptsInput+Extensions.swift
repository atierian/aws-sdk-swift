// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListScriptsInputHeadersMiddleware: Middleware {
    public let id: String = "ListScriptsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListScriptsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListScriptsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListScriptsInput>
    public typealias MOutput = OperationOutput<ListScriptsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListScriptsOutputError>
}

public struct ListScriptsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListScriptsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListScriptsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListScriptsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListScriptsInput>
    public typealias MOutput = OperationOutput<ListScriptsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListScriptsOutputError>
}

public struct ListScriptsInputBodyMiddleware: Middleware {
    public let id: String = "ListScriptsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListScriptsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListScriptsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListScriptsInput>
    public typealias MOutput = OperationOutput<ListScriptsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListScriptsOutputError>
}

extension ListScriptsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case limit = "Limit"
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let limit = limit {
            try encodeContainer.encode(limit, forKey: .limit)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}