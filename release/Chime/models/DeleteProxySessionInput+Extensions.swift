// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteProxySessionInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteProxySessionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteProxySessionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteProxySessionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteProxySessionInput>
    public typealias MOutput = OperationOutput<DeleteProxySessionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteProxySessionOutputError>
}

public struct DeleteProxySessionInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteProxySessionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteProxySessionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteProxySessionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteProxySessionInput>
    public typealias MOutput = OperationOutput<DeleteProxySessionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteProxySessionOutputError>
}

extension DeleteProxySessionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}