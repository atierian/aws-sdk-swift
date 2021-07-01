// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetStudioComponentInputHeadersMiddleware: Middleware {
    public let id: String = "GetStudioComponentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetStudioComponentInput>,
                  next: H) -> Swift.Result<OperationOutput<GetStudioComponentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetStudioComponentInput>
    public typealias MOutput = OperationOutput<GetStudioComponentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetStudioComponentOutputError>
}

public struct GetStudioComponentInputQueryItemMiddleware: Middleware {
    public let id: String = "GetStudioComponentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetStudioComponentInput>,
                  next: H) -> Swift.Result<OperationOutput<GetStudioComponentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetStudioComponentInput>
    public typealias MOutput = OperationOutput<GetStudioComponentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetStudioComponentOutputError>
}

extension GetStudioComponentInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}