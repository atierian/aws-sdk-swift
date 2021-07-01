// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateFirewallPolicyChangeProtectionInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateFirewallPolicyChangeProtectionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFirewallPolicyChangeProtectionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFirewallPolicyChangeProtectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateFirewallPolicyChangeProtectionInput>
    public typealias MOutput = OperationOutput<UpdateFirewallPolicyChangeProtectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFirewallPolicyChangeProtectionOutputError>
}

public struct UpdateFirewallPolicyChangeProtectionInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateFirewallPolicyChangeProtectionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFirewallPolicyChangeProtectionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFirewallPolicyChangeProtectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateFirewallPolicyChangeProtectionInput>
    public typealias MOutput = OperationOutput<UpdateFirewallPolicyChangeProtectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFirewallPolicyChangeProtectionOutputError>
}

public struct UpdateFirewallPolicyChangeProtectionInputBodyMiddleware: Middleware {
    public let id: String = "UpdateFirewallPolicyChangeProtectionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFirewallPolicyChangeProtectionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFirewallPolicyChangeProtectionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateFirewallPolicyChangeProtectionInput>
    public typealias MOutput = OperationOutput<UpdateFirewallPolicyChangeProtectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFirewallPolicyChangeProtectionOutputError>
}

extension UpdateFirewallPolicyChangeProtectionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case firewallArn = "FirewallArn"
        case firewallName = "FirewallName"
        case firewallPolicyChangeProtection = "FirewallPolicyChangeProtection"
        case updateToken = "UpdateToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let firewallArn = firewallArn {
            try encodeContainer.encode(firewallArn, forKey: .firewallArn)
        }
        if let firewallName = firewallName {
            try encodeContainer.encode(firewallName, forKey: .firewallName)
        }
        if firewallPolicyChangeProtection != false {
            try encodeContainer.encode(firewallPolicyChangeProtection, forKey: .firewallPolicyChangeProtection)
        }
        if let updateToken = updateToken {
            try encodeContainer.encode(updateToken, forKey: .updateToken)
        }
    }
}