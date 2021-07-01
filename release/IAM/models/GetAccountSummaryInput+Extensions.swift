// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetAccountSummaryInputHeadersMiddleware: Middleware {
    public let id: String = "GetAccountSummaryInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAccountSummaryInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAccountSummaryOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAccountSummaryInput>
    public typealias MOutput = OperationOutput<GetAccountSummaryOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAccountSummaryOutputError>
}

public struct GetAccountSummaryInputQueryItemMiddleware: Middleware {
    public let id: String = "GetAccountSummaryInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAccountSummaryInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAccountSummaryOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAccountSummaryInput>
    public typealias MOutput = OperationOutput<GetAccountSummaryOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAccountSummaryOutputError>
}

public struct GetAccountSummaryInputBodyMiddleware: Middleware {
    public let id: String = "GetAccountSummaryInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAccountSummaryInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAccountSummaryOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetAccountSummaryInput>
    public typealias MOutput = OperationOutput<GetAccountSummaryOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAccountSummaryOutputError>
}

extension GetAccountSummaryInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        try container.encode("GetAccountSummary", forKey:Key("Action"))
        try container.encode("2010-05-08", forKey:Key("Version"))
    }
}