// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateKeyDescriptionInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateKeyDescriptionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateKeyDescriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateKeyDescriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateKeyDescriptionInput>
    public typealias MOutput = OperationOutput<UpdateKeyDescriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateKeyDescriptionOutputError>
}

public struct UpdateKeyDescriptionInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateKeyDescriptionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateKeyDescriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateKeyDescriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateKeyDescriptionInput>
    public typealias MOutput = OperationOutput<UpdateKeyDescriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateKeyDescriptionOutputError>
}

public struct UpdateKeyDescriptionInputBodyMiddleware: Middleware {
    public let id: String = "UpdateKeyDescriptionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateKeyDescriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateKeyDescriptionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateKeyDescriptionInput>
    public typealias MOutput = OperationOutput<UpdateKeyDescriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateKeyDescriptionOutputError>
}

extension UpdateKeyDescriptionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case keyId = "KeyId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let keyId = keyId {
            try encodeContainer.encode(keyId, forKey: .keyId)
        }
    }
}