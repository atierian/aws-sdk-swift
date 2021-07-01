// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StopChannelInputHeadersMiddleware: Middleware {
    public let id: String = "StopChannelInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<StopChannelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopChannelInput>
    public typealias MOutput = OperationOutput<StopChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopChannelOutputError>
}

public struct StopChannelInputQueryItemMiddleware: Middleware {
    public let id: String = "StopChannelInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<StopChannelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopChannelInput>
    public typealias MOutput = OperationOutput<StopChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopChannelOutputError>
}

extension StopChannelInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}