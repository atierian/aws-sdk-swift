// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetDevEndpointInputHeadersMiddleware: Middleware {
    public let id: String = "GetDevEndpointInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDevEndpointInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDevEndpointOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDevEndpointInput>
    public typealias MOutput = OperationOutput<GetDevEndpointOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDevEndpointOutputError>
}

public struct GetDevEndpointInputQueryItemMiddleware: Middleware {
    public let id: String = "GetDevEndpointInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDevEndpointInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDevEndpointOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDevEndpointInput>
    public typealias MOutput = OperationOutput<GetDevEndpointOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDevEndpointOutputError>
}

public struct GetDevEndpointInputBodyMiddleware: Middleware {
    public let id: String = "GetDevEndpointInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDevEndpointInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDevEndpointOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetDevEndpointInput>
    public typealias MOutput = OperationOutput<GetDevEndpointOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDevEndpointOutputError>
}

extension GetDevEndpointInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case endpointName = "EndpointName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let endpointName = endpointName {
            try encodeContainer.encode(endpointName, forKey: .endpointName)
        }
    }
}