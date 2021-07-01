// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AssumeRoleWithSAMLInputHeadersMiddleware: Middleware {
    public let id: String = "AssumeRoleWithSAMLInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssumeRoleWithSAMLInput>,
                  next: H) -> Swift.Result<OperationOutput<AssumeRoleWithSAMLOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssumeRoleWithSAMLInput>
    public typealias MOutput = OperationOutput<AssumeRoleWithSAMLOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssumeRoleWithSAMLOutputError>
}

public struct AssumeRoleWithSAMLInputQueryItemMiddleware: Middleware {
    public let id: String = "AssumeRoleWithSAMLInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssumeRoleWithSAMLInput>,
                  next: H) -> Swift.Result<OperationOutput<AssumeRoleWithSAMLOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssumeRoleWithSAMLInput>
    public typealias MOutput = OperationOutput<AssumeRoleWithSAMLOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssumeRoleWithSAMLOutputError>
}

public struct AssumeRoleWithSAMLInputBodyMiddleware: Middleware {
    public let id: String = "AssumeRoleWithSAMLInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssumeRoleWithSAMLInput>,
                  next: H) -> Swift.Result<OperationOutput<AssumeRoleWithSAMLOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssumeRoleWithSAMLInput>
    public typealias MOutput = OperationOutput<AssumeRoleWithSAMLOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssumeRoleWithSAMLOutputError>
}

extension AssumeRoleWithSAMLInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let durationSeconds = durationSeconds {
            try container.encode(durationSeconds, forKey: Key("DurationSeconds"))
        }
        if let policy = policy {
            try container.encode(policy, forKey: Key("Policy"))
        }
        if let policyArns = policyArns {
            var policyArnsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("PolicyArns"))
            for (index0, policydescriptortype0) in policyArns.enumerated() {
                try policyArnsContainer.encode(policydescriptortype0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        if let principalArn = principalArn {
            try container.encode(principalArn, forKey: Key("PrincipalArn"))
        }
        if let roleArn = roleArn {
            try container.encode(roleArn, forKey: Key("RoleArn"))
        }
        if let sAMLAssertion = sAMLAssertion {
            try container.encode(sAMLAssertion, forKey: Key("SAMLAssertion"))
        }
        try container.encode("AssumeRoleWithSAML", forKey:Key("Action"))
        try container.encode("2011-06-15", forKey:Key("Version"))
    }
}