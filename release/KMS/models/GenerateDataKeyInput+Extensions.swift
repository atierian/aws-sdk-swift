// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GenerateDataKeyInputHeadersMiddleware: Middleware {
    public let id: String = "GenerateDataKeyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GenerateDataKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<GenerateDataKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GenerateDataKeyInput>
    public typealias MOutput = OperationOutput<GenerateDataKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GenerateDataKeyOutputError>
}

public struct GenerateDataKeyInputQueryItemMiddleware: Middleware {
    public let id: String = "GenerateDataKeyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GenerateDataKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<GenerateDataKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GenerateDataKeyInput>
    public typealias MOutput = OperationOutput<GenerateDataKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GenerateDataKeyOutputError>
}

public struct GenerateDataKeyInputBodyMiddleware: Middleware {
    public let id: String = "GenerateDataKeyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GenerateDataKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<GenerateDataKeyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GenerateDataKeyInput>
    public typealias MOutput = OperationOutput<GenerateDataKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GenerateDataKeyOutputError>
}

extension GenerateDataKeyInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case encryptionContext = "EncryptionContext"
        case grantTokens = "GrantTokens"
        case keyId = "KeyId"
        case keySpec = "KeySpec"
        case numberOfBytes = "NumberOfBytes"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let encryptionContext = encryptionContext {
            var encryptionContextContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .encryptionContext)
            for (dictKey0, encryptioncontexttype0) in encryptionContext {
                try encryptionContextContainer.encode(encryptioncontexttype0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let grantTokens = grantTokens {
            var grantTokensContainer = encodeContainer.nestedUnkeyedContainer(forKey: .grantTokens)
            for granttokenlist0 in grantTokens {
                try grantTokensContainer.encode(granttokenlist0)
            }
        }
        if let keyId = keyId {
            try encodeContainer.encode(keyId, forKey: .keyId)
        }
        if let keySpec = keySpec {
            try encodeContainer.encode(keySpec.rawValue, forKey: .keySpec)
        }
        if let numberOfBytes = numberOfBytes {
            try encodeContainer.encode(numberOfBytes, forKey: .numberOfBytes)
        }
    }
}