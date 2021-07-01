// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct EstimateTemplateCostInputHeadersMiddleware: Middleware {
    public let id: String = "EstimateTemplateCostInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<EstimateTemplateCostInput>,
                  next: H) -> Swift.Result<OperationOutput<EstimateTemplateCostOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<EstimateTemplateCostInput>
    public typealias MOutput = OperationOutput<EstimateTemplateCostOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<EstimateTemplateCostOutputError>
}

public struct EstimateTemplateCostInputQueryItemMiddleware: Middleware {
    public let id: String = "EstimateTemplateCostInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<EstimateTemplateCostInput>,
                  next: H) -> Swift.Result<OperationOutput<EstimateTemplateCostOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<EstimateTemplateCostInput>
    public typealias MOutput = OperationOutput<EstimateTemplateCostOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<EstimateTemplateCostOutputError>
}

public struct EstimateTemplateCostInputBodyMiddleware: Middleware {
    public let id: String = "EstimateTemplateCostInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<EstimateTemplateCostInput>,
                  next: H) -> Swift.Result<OperationOutput<EstimateTemplateCostOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<EstimateTemplateCostInput>
    public typealias MOutput = OperationOutput<EstimateTemplateCostOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<EstimateTemplateCostOutputError>
}

extension EstimateTemplateCostInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let parameters = parameters {
            var parametersContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Parameters"))
            for (index0, parameter0) in parameters.enumerated() {
                try parametersContainer.encode(parameter0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        if let templateBody = templateBody {
            try container.encode(templateBody, forKey: Key("TemplateBody"))
        }
        if let templateURL = templateURL {
            try container.encode(templateURL, forKey: Key("TemplateURL"))
        }
        try container.encode("EstimateTemplateCost", forKey:Key("Action"))
        try container.encode("2010-05-15", forKey:Key("Version"))
    }
}