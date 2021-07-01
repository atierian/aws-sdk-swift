// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreatePrivateVirtualInterfaceInputHeadersMiddleware: Middleware {
    public let id: String = "CreatePrivateVirtualInterfaceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreatePrivateVirtualInterfaceInput>,
                  next: H) -> Swift.Result<OperationOutput<CreatePrivateVirtualInterfaceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreatePrivateVirtualInterfaceInput>
    public typealias MOutput = OperationOutput<CreatePrivateVirtualInterfaceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreatePrivateVirtualInterfaceOutputError>
}

public struct CreatePrivateVirtualInterfaceInputQueryItemMiddleware: Middleware {
    public let id: String = "CreatePrivateVirtualInterfaceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreatePrivateVirtualInterfaceInput>,
                  next: H) -> Swift.Result<OperationOutput<CreatePrivateVirtualInterfaceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreatePrivateVirtualInterfaceInput>
    public typealias MOutput = OperationOutput<CreatePrivateVirtualInterfaceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreatePrivateVirtualInterfaceOutputError>
}

public struct CreatePrivateVirtualInterfaceInputBodyMiddleware: Middleware {
    public let id: String = "CreatePrivateVirtualInterfaceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreatePrivateVirtualInterfaceInput>,
                  next: H) -> Swift.Result<OperationOutput<CreatePrivateVirtualInterfaceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreatePrivateVirtualInterfaceInput>
    public typealias MOutput = OperationOutput<CreatePrivateVirtualInterfaceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreatePrivateVirtualInterfaceOutputError>
}

extension CreatePrivateVirtualInterfaceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case connectionId
        case newPrivateVirtualInterface
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let connectionId = connectionId {
            try encodeContainer.encode(connectionId, forKey: .connectionId)
        }
        if let newPrivateVirtualInterface = newPrivateVirtualInterface {
            try encodeContainer.encode(newPrivateVirtualInterface, forKey: .newPrivateVirtualInterface)
        }
    }
}