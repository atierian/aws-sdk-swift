// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetAggregateComplianceDetailsByConfigRuleInputHeadersMiddleware: Middleware {
    public let id: String = "GetAggregateComplianceDetailsByConfigRuleInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAggregateComplianceDetailsByConfigRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAggregateComplianceDetailsByConfigRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAggregateComplianceDetailsByConfigRuleInput>
    public typealias MOutput = OperationOutput<GetAggregateComplianceDetailsByConfigRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAggregateComplianceDetailsByConfigRuleOutputError>
}

public struct GetAggregateComplianceDetailsByConfigRuleInputQueryItemMiddleware: Middleware {
    public let id: String = "GetAggregateComplianceDetailsByConfigRuleInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAggregateComplianceDetailsByConfigRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAggregateComplianceDetailsByConfigRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAggregateComplianceDetailsByConfigRuleInput>
    public typealias MOutput = OperationOutput<GetAggregateComplianceDetailsByConfigRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAggregateComplianceDetailsByConfigRuleOutputError>
}

public struct GetAggregateComplianceDetailsByConfigRuleInputBodyMiddleware: Middleware {
    public let id: String = "GetAggregateComplianceDetailsByConfigRuleInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAggregateComplianceDetailsByConfigRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAggregateComplianceDetailsByConfigRuleOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetAggregateComplianceDetailsByConfigRuleInput>
    public typealias MOutput = OperationOutput<GetAggregateComplianceDetailsByConfigRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAggregateComplianceDetailsByConfigRuleOutputError>
}

extension GetAggregateComplianceDetailsByConfigRuleInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accountId = "AccountId"
        case awsRegion = "AwsRegion"
        case complianceType = "ComplianceType"
        case configRuleName = "ConfigRuleName"
        case configurationAggregatorName = "ConfigurationAggregatorName"
        case limit = "Limit"
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accountId = accountId {
            try encodeContainer.encode(accountId, forKey: .accountId)
        }
        if let awsRegion = awsRegion {
            try encodeContainer.encode(awsRegion, forKey: .awsRegion)
        }
        if let complianceType = complianceType {
            try encodeContainer.encode(complianceType.rawValue, forKey: .complianceType)
        }
        if let configRuleName = configRuleName {
            try encodeContainer.encode(configRuleName, forKey: .configRuleName)
        }
        if let configurationAggregatorName = configurationAggregatorName {
            try encodeContainer.encode(configurationAggregatorName, forKey: .configurationAggregatorName)
        }
        if limit != 0 {
            try encodeContainer.encode(limit, forKey: .limit)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}