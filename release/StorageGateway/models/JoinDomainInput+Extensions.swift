// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct JoinDomainInputHeadersMiddleware: Middleware {
    public let id: String = "JoinDomainInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<JoinDomainInput>,
                  next: H) -> Swift.Result<OperationOutput<JoinDomainOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<JoinDomainInput>
    public typealias MOutput = OperationOutput<JoinDomainOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<JoinDomainOutputError>
}

public struct JoinDomainInputQueryItemMiddleware: Middleware {
    public let id: String = "JoinDomainInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<JoinDomainInput>,
                  next: H) -> Swift.Result<OperationOutput<JoinDomainOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<JoinDomainInput>
    public typealias MOutput = OperationOutput<JoinDomainOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<JoinDomainOutputError>
}

public struct JoinDomainInputBodyMiddleware: Middleware {
    public let id: String = "JoinDomainInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<JoinDomainInput>,
                  next: H) -> Swift.Result<OperationOutput<JoinDomainOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<JoinDomainInput>
    public typealias MOutput = OperationOutput<JoinDomainOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<JoinDomainOutputError>
}

extension JoinDomainInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case domainControllers = "DomainControllers"
        case domainName = "DomainName"
        case gatewayARN = "GatewayARN"
        case organizationalUnit = "OrganizationalUnit"
        case password = "Password"
        case timeoutInSeconds = "TimeoutInSeconds"
        case userName = "UserName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let domainControllers = domainControllers {
            var domainControllersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .domainControllers)
            for hosts0 in domainControllers {
                try domainControllersContainer.encode(hosts0)
            }
        }
        if let domainName = domainName {
            try encodeContainer.encode(domainName, forKey: .domainName)
        }
        if let gatewayARN = gatewayARN {
            try encodeContainer.encode(gatewayARN, forKey: .gatewayARN)
        }
        if let organizationalUnit = organizationalUnit {
            try encodeContainer.encode(organizationalUnit, forKey: .organizationalUnit)
        }
        if let password = password {
            try encodeContainer.encode(password, forKey: .password)
        }
        if let timeoutInSeconds = timeoutInSeconds {
            try encodeContainer.encode(timeoutInSeconds, forKey: .timeoutInSeconds)
        }
        if let userName = userName {
            try encodeContainer.encode(userName, forKey: .userName)
        }
    }
}