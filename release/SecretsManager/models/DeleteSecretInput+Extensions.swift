// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteSecretInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteSecretInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteSecretInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteSecretOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteSecretInput>
    public typealias MOutput = OperationOutput<DeleteSecretOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteSecretOutputError>
}

public struct DeleteSecretInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteSecretInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteSecretInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteSecretOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteSecretInput>
    public typealias MOutput = OperationOutput<DeleteSecretOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteSecretOutputError>
}

public struct DeleteSecretInputBodyMiddleware: Middleware {
    public let id: String = "DeleteSecretInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteSecretInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteSecretOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteSecretInput>
    public typealias MOutput = OperationOutput<DeleteSecretOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteSecretOutputError>
}

extension DeleteSecretInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case forceDeleteWithoutRecovery = "ForceDeleteWithoutRecovery"
        case recoveryWindowInDays = "RecoveryWindowInDays"
        case secretId = "SecretId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if forceDeleteWithoutRecovery != false {
            try encodeContainer.encode(forceDeleteWithoutRecovery, forKey: .forceDeleteWithoutRecovery)
        }
        if recoveryWindowInDays != 0 {
            try encodeContainer.encode(recoveryWindowInDays, forKey: .recoveryWindowInDays)
        }
        if let secretId = secretId {
            try encodeContainer.encode(secretId, forKey: .secretId)
        }
    }
}