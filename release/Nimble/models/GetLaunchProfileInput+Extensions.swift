// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetLaunchProfileInputHeadersMiddleware: Middleware {
    public let id: String = "GetLaunchProfileInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetLaunchProfileInput>,
                  next: H) -> Swift.Result<OperationOutput<GetLaunchProfileOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetLaunchProfileInput>
    public typealias MOutput = OperationOutput<GetLaunchProfileOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetLaunchProfileOutputError>
}

public struct GetLaunchProfileInputQueryItemMiddleware: Middleware {
    public let id: String = "GetLaunchProfileInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetLaunchProfileInput>,
                  next: H) -> Swift.Result<OperationOutput<GetLaunchProfileOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetLaunchProfileInput>
    public typealias MOutput = OperationOutput<GetLaunchProfileOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetLaunchProfileOutputError>
}

extension GetLaunchProfileInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}