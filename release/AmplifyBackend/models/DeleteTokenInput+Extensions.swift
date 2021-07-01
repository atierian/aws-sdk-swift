// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteTokenInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteTokenInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTokenInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTokenOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteTokenInput>
    public typealias MOutput = OperationOutput<DeleteTokenOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTokenOutputError>
}

public struct DeleteTokenInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteTokenInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTokenInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTokenOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteTokenInput>
    public typealias MOutput = OperationOutput<DeleteTokenOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTokenOutputError>
}

extension DeleteTokenInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}