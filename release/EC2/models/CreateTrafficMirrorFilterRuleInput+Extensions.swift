// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateTrafficMirrorFilterRuleInputHeadersMiddleware: Middleware {
    public let id: String = "CreateTrafficMirrorFilterRuleInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTrafficMirrorFilterRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTrafficMirrorFilterRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateTrafficMirrorFilterRuleInput>
    public typealias MOutput = OperationOutput<CreateTrafficMirrorFilterRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTrafficMirrorFilterRuleOutputError>
}

public struct CreateTrafficMirrorFilterRuleInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateTrafficMirrorFilterRuleInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTrafficMirrorFilterRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTrafficMirrorFilterRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateTrafficMirrorFilterRuleInput>
    public typealias MOutput = OperationOutput<CreateTrafficMirrorFilterRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTrafficMirrorFilterRuleOutputError>
}

public struct CreateTrafficMirrorFilterRuleInputBodyMiddleware: Middleware {
    public let id: String = "CreateTrafficMirrorFilterRuleInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTrafficMirrorFilterRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTrafficMirrorFilterRuleOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateTrafficMirrorFilterRuleInput>
    public typealias MOutput = OperationOutput<CreateTrafficMirrorFilterRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTrafficMirrorFilterRuleOutputError>
}

extension CreateTrafficMirrorFilterRuleInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let clientToken = clientToken {
            try container.encode(clientToken, forKey: Key("ClientToken"))
        }
        if let description = description {
            try container.encode(description, forKey: Key("Description"))
        }
        if let destinationCidrBlock = destinationCidrBlock {
            try container.encode(destinationCidrBlock, forKey: Key("DestinationCidrBlock"))
        }
        if let destinationPortRange = destinationPortRange {
            try container.encode(destinationPortRange, forKey: Key("DestinationPortRange"))
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if `protocol` != 0 {
            try container.encode(`protocol`, forKey: Key("Protocol"))
        }
        if let ruleAction = ruleAction {
            try container.encode(ruleAction, forKey: Key("RuleAction"))
        }
        if ruleNumber != 0 {
            try container.encode(ruleNumber, forKey: Key("RuleNumber"))
        }
        if let sourceCidrBlock = sourceCidrBlock {
            try container.encode(sourceCidrBlock, forKey: Key("SourceCidrBlock"))
        }
        if let sourcePortRange = sourcePortRange {
            try container.encode(sourcePortRange, forKey: Key("SourcePortRange"))
        }
        if let trafficDirection = trafficDirection {
            try container.encode(trafficDirection, forKey: Key("TrafficDirection"))
        }
        if let trafficMirrorFilterId = trafficMirrorFilterId {
            try container.encode(trafficMirrorFilterId, forKey: Key("TrafficMirrorFilterId"))
        }
        try container.encode("CreateTrafficMirrorFilterRule", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}