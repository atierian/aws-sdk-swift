// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteAuthorizerInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteAuthorizerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAuthorizerInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAuthorizerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAuthorizerInput>
    public typealias MOutput = OperationOutput<DeleteAuthorizerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAuthorizerOutputError>
}

public struct DeleteAuthorizerInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteAuthorizerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAuthorizerInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAuthorizerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAuthorizerInput>
    public typealias MOutput = OperationOutput<DeleteAuthorizerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAuthorizerOutputError>
}

extension DeleteAuthorizerInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}