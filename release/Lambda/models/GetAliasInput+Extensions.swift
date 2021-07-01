// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetAliasInputHeadersMiddleware: Middleware {
    public let id: String = "GetAliasInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAliasInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAliasOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAliasInput>
    public typealias MOutput = OperationOutput<GetAliasOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAliasOutputError>
}

public struct GetAliasInputQueryItemMiddleware: Middleware {
    public let id: String = "GetAliasInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAliasInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAliasOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAliasInput>
    public typealias MOutput = OperationOutput<GetAliasOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAliasOutputError>
}

extension GetAliasInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}