// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteUtterancesInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteUtterancesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteUtterancesInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteUtterancesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteUtterancesInput>
    public typealias MOutput = OperationOutput<DeleteUtterancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteUtterancesOutputError>
}

public struct DeleteUtterancesInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteUtterancesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteUtterancesInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteUtterancesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteUtterancesInput>
    public typealias MOutput = OperationOutput<DeleteUtterancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteUtterancesOutputError>
}

extension DeleteUtterancesInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}