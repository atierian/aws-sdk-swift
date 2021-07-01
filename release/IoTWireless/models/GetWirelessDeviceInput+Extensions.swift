// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetWirelessDeviceInputHeadersMiddleware: Middleware {
    public let id: String = "GetWirelessDeviceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetWirelessDeviceInput>,
                  next: H) -> Swift.Result<OperationOutput<GetWirelessDeviceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetWirelessDeviceInput>
    public typealias MOutput = OperationOutput<GetWirelessDeviceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetWirelessDeviceOutputError>
}

public struct GetWirelessDeviceInputQueryItemMiddleware: Middleware {
    public let id: String = "GetWirelessDeviceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetWirelessDeviceInput>,
                  next: H) -> Swift.Result<OperationOutput<GetWirelessDeviceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let identifierType = input.operationInput.identifierType {
            let identifierTypeQueryItem = URLQueryItem(name: "identifierType".urlPercentEncoding(), value: String(identifierType.rawValue).urlPercentEncoding())
            input.builder.withQueryItem(identifierTypeQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetWirelessDeviceInput>
    public typealias MOutput = OperationOutput<GetWirelessDeviceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetWirelessDeviceOutputError>
}

extension GetWirelessDeviceInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}