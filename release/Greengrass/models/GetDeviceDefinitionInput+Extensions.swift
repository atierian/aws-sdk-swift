// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetDeviceDefinitionInputHeadersMiddleware: Middleware {
    public let id: String = "GetDeviceDefinitionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDeviceDefinitionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDeviceDefinitionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDeviceDefinitionInput>
    public typealias MOutput = OperationOutput<GetDeviceDefinitionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDeviceDefinitionOutputError>
}

public struct GetDeviceDefinitionInputQueryItemMiddleware: Middleware {
    public let id: String = "GetDeviceDefinitionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDeviceDefinitionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDeviceDefinitionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDeviceDefinitionInput>
    public typealias MOutput = OperationOutput<GetDeviceDefinitionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDeviceDefinitionOutputError>
}

extension GetDeviceDefinitionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}