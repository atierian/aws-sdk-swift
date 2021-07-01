// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateAuthorizerInputHeadersMiddleware: Middleware {
    public let id: String = "CreateAuthorizerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAuthorizerInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAuthorizerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateAuthorizerInput>
    public typealias MOutput = OperationOutput<CreateAuthorizerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAuthorizerOutputError>
}

public struct CreateAuthorizerInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateAuthorizerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAuthorizerInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAuthorizerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateAuthorizerInput>
    public typealias MOutput = OperationOutput<CreateAuthorizerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAuthorizerOutputError>
}

public struct CreateAuthorizerInputBodyMiddleware: Middleware {
    public let id: String = "CreateAuthorizerInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAuthorizerInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAuthorizerOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateAuthorizerInput>
    public typealias MOutput = OperationOutput<CreateAuthorizerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAuthorizerOutputError>
}

extension CreateAuthorizerInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case authorizerFunctionArn
        case signingDisabled
        case status
        case tags
        case tokenKeyName
        case tokenSigningPublicKeys
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let authorizerFunctionArn = authorizerFunctionArn {
            try encodeContainer.encode(authorizerFunctionArn, forKey: .authorizerFunctionArn)
        }
        if let signingDisabled = signingDisabled {
            try encodeContainer.encode(signingDisabled, forKey: .signingDisabled)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
        if let tokenKeyName = tokenKeyName {
            try encodeContainer.encode(tokenKeyName, forKey: .tokenKeyName)
        }
        if let tokenSigningPublicKeys = tokenSigningPublicKeys {
            var tokenSigningPublicKeysContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tokenSigningPublicKeys)
            for (dictKey0, publickeymap0) in tokenSigningPublicKeys {
                try tokenSigningPublicKeysContainer.encode(publickeymap0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}