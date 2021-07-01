// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateContactChannelInputHeadersMiddleware: Middleware {
    public let id: String = "CreateContactChannelInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateContactChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateContactChannelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateContactChannelInput>
    public typealias MOutput = OperationOutput<CreateContactChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateContactChannelOutputError>
}

public struct CreateContactChannelInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateContactChannelInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateContactChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateContactChannelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateContactChannelInput>
    public typealias MOutput = OperationOutput<CreateContactChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateContactChannelOutputError>
}

public struct CreateContactChannelInputBodyMiddleware: Middleware {
    public let id: String = "CreateContactChannelInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateContactChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateContactChannelOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateContactChannelInput>
    public typealias MOutput = OperationOutput<CreateContactChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateContactChannelOutputError>
}

extension CreateContactChannelInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case contactId = "ContactId"
        case deferActivation = "DeferActivation"
        case deliveryAddress = "DeliveryAddress"
        case idempotencyToken = "IdempotencyToken"
        case name = "Name"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let contactId = contactId {
            try encodeContainer.encode(contactId, forKey: .contactId)
        }
        if let deferActivation = deferActivation {
            try encodeContainer.encode(deferActivation, forKey: .deferActivation)
        }
        if let deliveryAddress = deliveryAddress {
            try encodeContainer.encode(deliveryAddress, forKey: .deliveryAddress)
        }
        if let idempotencyToken = idempotencyToken {
            try encodeContainer.encode(idempotencyToken, forKey: .idempotencyToken)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }
}