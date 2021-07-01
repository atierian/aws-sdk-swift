// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListSAMLProvidersInputHeadersMiddleware: Middleware {
    public let id: String = "ListSAMLProvidersInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListSAMLProvidersInput>,
                  next: H) -> Swift.Result<OperationOutput<ListSAMLProvidersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListSAMLProvidersInput>
    public typealias MOutput = OperationOutput<ListSAMLProvidersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListSAMLProvidersOutputError>
}

public struct ListSAMLProvidersInputQueryItemMiddleware: Middleware {
    public let id: String = "ListSAMLProvidersInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListSAMLProvidersInput>,
                  next: H) -> Swift.Result<OperationOutput<ListSAMLProvidersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListSAMLProvidersInput>
    public typealias MOutput = OperationOutput<ListSAMLProvidersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListSAMLProvidersOutputError>
}

public struct ListSAMLProvidersInputBodyMiddleware: Middleware {
    public let id: String = "ListSAMLProvidersInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListSAMLProvidersInput>,
                  next: H) -> Swift.Result<OperationOutput<ListSAMLProvidersOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListSAMLProvidersInput>
    public typealias MOutput = OperationOutput<ListSAMLProvidersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListSAMLProvidersOutputError>
}

extension ListSAMLProvidersInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        try container.encode("ListSAMLProviders", forKey:Key("Action"))
        try container.encode("2010-05-08", forKey:Key("Version"))
    }
}