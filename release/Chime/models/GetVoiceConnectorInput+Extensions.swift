// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetVoiceConnectorInputHeadersMiddleware: Middleware {
    public let id: String = "GetVoiceConnectorInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetVoiceConnectorInput>,
                  next: H) -> Swift.Result<OperationOutput<GetVoiceConnectorOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetVoiceConnectorInput>
    public typealias MOutput = OperationOutput<GetVoiceConnectorOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetVoiceConnectorOutputError>
}

public struct GetVoiceConnectorInputQueryItemMiddleware: Middleware {
    public let id: String = "GetVoiceConnectorInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetVoiceConnectorInput>,
                  next: H) -> Swift.Result<OperationOutput<GetVoiceConnectorOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetVoiceConnectorInput>
    public typealias MOutput = OperationOutput<GetVoiceConnectorOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetVoiceConnectorOutputError>
}

extension GetVoiceConnectorInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}