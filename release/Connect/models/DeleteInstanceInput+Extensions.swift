// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteInstanceInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteInstanceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteInstanceInput>
    public typealias MOutput = OperationOutput<DeleteInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteInstanceOutputError>
}

public struct DeleteInstanceInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteInstanceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteInstanceInput>
    public typealias MOutput = OperationOutput<DeleteInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteInstanceOutputError>
}

extension DeleteInstanceInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}