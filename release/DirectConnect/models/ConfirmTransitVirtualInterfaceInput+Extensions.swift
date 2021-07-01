// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ConfirmTransitVirtualInterfaceInputHeadersMiddleware: Middleware {
    public let id: String = "ConfirmTransitVirtualInterfaceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ConfirmTransitVirtualInterfaceInput>,
                  next: H) -> Swift.Result<OperationOutput<ConfirmTransitVirtualInterfaceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ConfirmTransitVirtualInterfaceInput>
    public typealias MOutput = OperationOutput<ConfirmTransitVirtualInterfaceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ConfirmTransitVirtualInterfaceOutputError>
}

public struct ConfirmTransitVirtualInterfaceInputQueryItemMiddleware: Middleware {
    public let id: String = "ConfirmTransitVirtualInterfaceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ConfirmTransitVirtualInterfaceInput>,
                  next: H) -> Swift.Result<OperationOutput<ConfirmTransitVirtualInterfaceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ConfirmTransitVirtualInterfaceInput>
    public typealias MOutput = OperationOutput<ConfirmTransitVirtualInterfaceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ConfirmTransitVirtualInterfaceOutputError>
}

public struct ConfirmTransitVirtualInterfaceInputBodyMiddleware: Middleware {
    public let id: String = "ConfirmTransitVirtualInterfaceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ConfirmTransitVirtualInterfaceInput>,
                  next: H) -> Swift.Result<OperationOutput<ConfirmTransitVirtualInterfaceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ConfirmTransitVirtualInterfaceInput>
    public typealias MOutput = OperationOutput<ConfirmTransitVirtualInterfaceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ConfirmTransitVirtualInterfaceOutputError>
}

extension ConfirmTransitVirtualInterfaceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case directConnectGatewayId
        case virtualInterfaceId
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let directConnectGatewayId = directConnectGatewayId {
            try encodeContainer.encode(directConnectGatewayId, forKey: .directConnectGatewayId)
        }
        if let virtualInterfaceId = virtualInterfaceId {
            try encodeContainer.encode(virtualInterfaceId, forKey: .virtualInterfaceId)
        }
    }
}