// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateCampaignInputHeadersMiddleware: Middleware {
    public let id: String = "CreateCampaignInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateCampaignInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateCampaignOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateCampaignInput>
    public typealias MOutput = OperationOutput<CreateCampaignOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateCampaignOutputError>
}

public struct CreateCampaignInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateCampaignInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateCampaignInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateCampaignOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateCampaignInput>
    public typealias MOutput = OperationOutput<CreateCampaignOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateCampaignOutputError>
}

public struct CreateCampaignInputBodyMiddleware: Middleware {
    public let id: String = "CreateCampaignInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateCampaignInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateCampaignOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateCampaignInput>
    public typealias MOutput = OperationOutput<CreateCampaignOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateCampaignOutputError>
}

extension CreateCampaignInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case campaignConfig
        case minProvisionedTPS
        case name
        case solutionVersionArn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let campaignConfig = campaignConfig {
            try encodeContainer.encode(campaignConfig, forKey: .campaignConfig)
        }
        if let minProvisionedTPS = minProvisionedTPS {
            try encodeContainer.encode(minProvisionedTPS, forKey: .minProvisionedTPS)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let solutionVersionArn = solutionVersionArn {
            try encodeContainer.encode(solutionVersionArn, forKey: .solutionVersionArn)
        }
    }
}