// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateServerInputHeadersMiddleware: Middleware {
    public let id: String = "CreateServerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateServerInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateServerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateServerInput>
    public typealias MOutput = OperationOutput<CreateServerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateServerOutputError>
}

public struct CreateServerInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateServerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateServerInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateServerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateServerInput>
    public typealias MOutput = OperationOutput<CreateServerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateServerOutputError>
}

public struct CreateServerInputBodyMiddleware: Middleware {
    public let id: String = "CreateServerInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateServerInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateServerOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateServerInput>
    public typealias MOutput = OperationOutput<CreateServerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateServerOutputError>
}

extension CreateServerInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case certificate = "Certificate"
        case domain = "Domain"
        case endpointDetails = "EndpointDetails"
        case endpointType = "EndpointType"
        case hostKey = "HostKey"
        case identityProviderDetails = "IdentityProviderDetails"
        case identityProviderType = "IdentityProviderType"
        case loggingRole = "LoggingRole"
        case protocols = "Protocols"
        case securityPolicyName = "SecurityPolicyName"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let certificate = certificate {
            try encodeContainer.encode(certificate, forKey: .certificate)
        }
        if let domain = domain {
            try encodeContainer.encode(domain.rawValue, forKey: .domain)
        }
        if let endpointDetails = endpointDetails {
            try encodeContainer.encode(endpointDetails, forKey: .endpointDetails)
        }
        if let endpointType = endpointType {
            try encodeContainer.encode(endpointType.rawValue, forKey: .endpointType)
        }
        if let hostKey = hostKey {
            try encodeContainer.encode(hostKey, forKey: .hostKey)
        }
        if let identityProviderDetails = identityProviderDetails {
            try encodeContainer.encode(identityProviderDetails, forKey: .identityProviderDetails)
        }
        if let identityProviderType = identityProviderType {
            try encodeContainer.encode(identityProviderType.rawValue, forKey: .identityProviderType)
        }
        if let loggingRole = loggingRole {
            try encodeContainer.encode(loggingRole, forKey: .loggingRole)
        }
        if let protocols = protocols {
            var protocolsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .protocols)
            for protocols0 in protocols {
                try protocolsContainer.encode(protocols0.rawValue)
            }
        }
        if let securityPolicyName = securityPolicyName {
            try encodeContainer.encode(securityPolicyName, forKey: .securityPolicyName)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for tags0 in tags {
                try tagsContainer.encode(tags0)
            }
        }
    }
}