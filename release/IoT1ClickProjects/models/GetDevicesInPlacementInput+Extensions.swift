// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetDevicesInPlacementInputHeadersMiddleware: Middleware {
    public let id: String = "GetDevicesInPlacementInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDevicesInPlacementInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDevicesInPlacementOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDevicesInPlacementInput>
    public typealias MOutput = OperationOutput<GetDevicesInPlacementOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDevicesInPlacementOutputError>
}

public struct GetDevicesInPlacementInputQueryItemMiddleware: Middleware {
    public let id: String = "GetDevicesInPlacementInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDevicesInPlacementInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDevicesInPlacementOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDevicesInPlacementInput>
    public typealias MOutput = OperationOutput<GetDevicesInPlacementOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDevicesInPlacementOutputError>
}

extension GetDevicesInPlacementInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}