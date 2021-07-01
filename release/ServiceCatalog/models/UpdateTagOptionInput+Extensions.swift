// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateTagOptionInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateTagOptionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTagOptionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTagOptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateTagOptionInput>
    public typealias MOutput = OperationOutput<UpdateTagOptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTagOptionOutputError>
}

public struct UpdateTagOptionInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateTagOptionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTagOptionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTagOptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateTagOptionInput>
    public typealias MOutput = OperationOutput<UpdateTagOptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTagOptionOutputError>
}

public struct UpdateTagOptionInputBodyMiddleware: Middleware {
    public let id: String = "UpdateTagOptionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTagOptionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTagOptionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateTagOptionInput>
    public typealias MOutput = OperationOutput<UpdateTagOptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTagOptionOutputError>
}

extension UpdateTagOptionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case active = "Active"
        case id = "Id"
        case value = "Value"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let active = active {
            try encodeContainer.encode(active, forKey: .active)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let value = value {
            try encodeContainer.encode(value, forKey: .value)
        }
    }
}