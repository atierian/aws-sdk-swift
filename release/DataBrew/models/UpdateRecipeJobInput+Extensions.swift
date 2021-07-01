// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateRecipeJobInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateRecipeJobInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRecipeJobInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRecipeJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateRecipeJobInput>
    public typealias MOutput = OperationOutput<UpdateRecipeJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRecipeJobOutputError>
}

public struct UpdateRecipeJobInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateRecipeJobInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRecipeJobInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRecipeJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateRecipeJobInput>
    public typealias MOutput = OperationOutput<UpdateRecipeJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRecipeJobOutputError>
}

public struct UpdateRecipeJobInputBodyMiddleware: Middleware {
    public let id: String = "UpdateRecipeJobInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRecipeJobInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRecipeJobOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateRecipeJobInput>
    public typealias MOutput = OperationOutput<UpdateRecipeJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRecipeJobOutputError>
}

extension UpdateRecipeJobInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case encryptionKeyArn = "EncryptionKeyArn"
        case encryptionMode = "EncryptionMode"
        case logSubscription = "LogSubscription"
        case maxCapacity = "MaxCapacity"
        case maxRetries = "MaxRetries"
        case outputs = "Outputs"
        case roleArn = "RoleArn"
        case timeout = "Timeout"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let encryptionKeyArn = encryptionKeyArn {
            try encodeContainer.encode(encryptionKeyArn, forKey: .encryptionKeyArn)
        }
        if let encryptionMode = encryptionMode {
            try encodeContainer.encode(encryptionMode.rawValue, forKey: .encryptionMode)
        }
        if let logSubscription = logSubscription {
            try encodeContainer.encode(logSubscription.rawValue, forKey: .logSubscription)
        }
        if maxCapacity != 0 {
            try encodeContainer.encode(maxCapacity, forKey: .maxCapacity)
        }
        if maxRetries != 0 {
            try encodeContainer.encode(maxRetries, forKey: .maxRetries)
        }
        if let outputs = outputs {
            var outputsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .outputs)
            for outputlist0 in outputs {
                try outputsContainer.encode(outputlist0)
            }
        }
        if let roleArn = roleArn {
            try encodeContainer.encode(roleArn, forKey: .roleArn)
        }
        if timeout != 0 {
            try encodeContainer.encode(timeout, forKey: .timeout)
        }
    }
}