// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateRuleGroupInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateRuleGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRuleGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRuleGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateRuleGroupInput>
    public typealias MOutput = OperationOutput<UpdateRuleGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRuleGroupOutputError>
}

public struct UpdateRuleGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateRuleGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRuleGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRuleGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateRuleGroupInput>
    public typealias MOutput = OperationOutput<UpdateRuleGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRuleGroupOutputError>
}

public struct UpdateRuleGroupInputBodyMiddleware: Middleware {
    public let id: String = "UpdateRuleGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRuleGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRuleGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateRuleGroupInput>
    public typealias MOutput = OperationOutput<UpdateRuleGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRuleGroupOutputError>
}

extension UpdateRuleGroupInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case changeToken = "ChangeToken"
        case ruleGroupId = "RuleGroupId"
        case updates = "Updates"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let changeToken = changeToken {
            try encodeContainer.encode(changeToken, forKey: .changeToken)
        }
        if let ruleGroupId = ruleGroupId {
            try encodeContainer.encode(ruleGroupId, forKey: .ruleGroupId)
        }
        if let updates = updates {
            var updatesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .updates)
            for rulegroupupdates0 in updates {
                try updatesContainer.encode(rulegroupupdates0)
            }
        }
    }
}