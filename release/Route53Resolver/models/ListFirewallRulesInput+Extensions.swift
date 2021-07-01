// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListFirewallRulesInputHeadersMiddleware: Middleware {
    public let id: String = "ListFirewallRulesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListFirewallRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListFirewallRulesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListFirewallRulesInput>
    public typealias MOutput = OperationOutput<ListFirewallRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListFirewallRulesOutputError>
}

public struct ListFirewallRulesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListFirewallRulesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListFirewallRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListFirewallRulesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListFirewallRulesInput>
    public typealias MOutput = OperationOutput<ListFirewallRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListFirewallRulesOutputError>
}

public struct ListFirewallRulesInputBodyMiddleware: Middleware {
    public let id: String = "ListFirewallRulesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListFirewallRulesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListFirewallRulesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListFirewallRulesInput>
    public typealias MOutput = OperationOutput<ListFirewallRulesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListFirewallRulesOutputError>
}

extension ListFirewallRulesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case action = "Action"
        case firewallRuleGroupId = "FirewallRuleGroupId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case priority = "Priority"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let action = action {
            try encodeContainer.encode(action.rawValue, forKey: .action)
        }
        if let firewallRuleGroupId = firewallRuleGroupId {
            try encodeContainer.encode(firewallRuleGroupId, forKey: .firewallRuleGroupId)
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let priority = priority {
            try encodeContainer.encode(priority, forKey: .priority)
        }
    }
}