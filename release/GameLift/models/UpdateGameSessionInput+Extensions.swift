// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateGameSessionInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateGameSessionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateGameSessionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateGameSessionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateGameSessionInput>
    public typealias MOutput = OperationOutput<UpdateGameSessionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateGameSessionOutputError>
}

public struct UpdateGameSessionInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateGameSessionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateGameSessionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateGameSessionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateGameSessionInput>
    public typealias MOutput = OperationOutput<UpdateGameSessionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateGameSessionOutputError>
}

public struct UpdateGameSessionInputBodyMiddleware: Middleware {
    public let id: String = "UpdateGameSessionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateGameSessionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateGameSessionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateGameSessionInput>
    public typealias MOutput = OperationOutput<UpdateGameSessionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateGameSessionOutputError>
}

extension UpdateGameSessionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case gameSessionId = "GameSessionId"
        case maximumPlayerSessionCount = "MaximumPlayerSessionCount"
        case name = "Name"
        case playerSessionCreationPolicy = "PlayerSessionCreationPolicy"
        case protectionPolicy = "ProtectionPolicy"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let gameSessionId = gameSessionId {
            try encodeContainer.encode(gameSessionId, forKey: .gameSessionId)
        }
        if let maximumPlayerSessionCount = maximumPlayerSessionCount {
            try encodeContainer.encode(maximumPlayerSessionCount, forKey: .maximumPlayerSessionCount)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let playerSessionCreationPolicy = playerSessionCreationPolicy {
            try encodeContainer.encode(playerSessionCreationPolicy.rawValue, forKey: .playerSessionCreationPolicy)
        }
        if let protectionPolicy = protectionPolicy {
            try encodeContainer.encode(protectionPolicy.rawValue, forKey: .protectionPolicy)
        }
    }
}