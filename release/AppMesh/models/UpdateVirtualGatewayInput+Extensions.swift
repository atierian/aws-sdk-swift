// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateVirtualGatewayInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateVirtualGatewayInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateVirtualGatewayInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateVirtualGatewayOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateVirtualGatewayInput>
    public typealias MOutput = OperationOutput<UpdateVirtualGatewayOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateVirtualGatewayOutputError>
}

public struct UpdateVirtualGatewayInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateVirtualGatewayInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateVirtualGatewayInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateVirtualGatewayOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let meshOwner = input.operationInput.meshOwner {
            let meshOwnerQueryItem = URLQueryItem(name: "meshOwner".urlPercentEncoding(), value: String(meshOwner).urlPercentEncoding())
            input.builder.withQueryItem(meshOwnerQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateVirtualGatewayInput>
    public typealias MOutput = OperationOutput<UpdateVirtualGatewayOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateVirtualGatewayOutputError>
}

public struct UpdateVirtualGatewayInputBodyMiddleware: Middleware {
    public let id: String = "UpdateVirtualGatewayInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateVirtualGatewayInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateVirtualGatewayOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateVirtualGatewayInput>
    public typealias MOutput = OperationOutput<UpdateVirtualGatewayOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateVirtualGatewayOutputError>
}

extension UpdateVirtualGatewayInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientToken
        case spec
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientToken = clientToken {
            try encodeContainer.encode(clientToken, forKey: .clientToken)
        }
        if let spec = spec {
            try encodeContainer.encode(spec, forKey: .spec)
        }
    }
}