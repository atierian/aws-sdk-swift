// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateFlowInputHeadersMiddleware: Middleware {
    public let id: String = "CreateFlowInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateFlowInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateFlowOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateFlowInput>
    public typealias MOutput = OperationOutput<CreateFlowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateFlowOutputError>
}

public struct CreateFlowInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateFlowInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateFlowInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateFlowOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateFlowInput>
    public typealias MOutput = OperationOutput<CreateFlowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateFlowOutputError>
}

public struct CreateFlowInputBodyMiddleware: Middleware {
    public let id: String = "CreateFlowInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateFlowInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateFlowOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateFlowInput>
    public typealias MOutput = OperationOutput<CreateFlowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateFlowOutputError>
}

extension CreateFlowInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case description
        case destinationFlowConfigList
        case flowName
        case kmsArn
        case sourceFlowConfig
        case tags
        case tasks
        case triggerConfig
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let destinationFlowConfigList = destinationFlowConfigList {
            var destinationFlowConfigListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .destinationFlowConfigList)
            for destinationflowconfiglist0 in destinationFlowConfigList {
                try destinationFlowConfigListContainer.encode(destinationflowconfiglist0)
            }
        }
        if let flowName = flowName {
            try encodeContainer.encode(flowName, forKey: .flowName)
        }
        if let kmsArn = kmsArn {
            try encodeContainer.encode(kmsArn, forKey: .kmsArn)
        }
        if let sourceFlowConfig = sourceFlowConfig {
            try encodeContainer.encode(sourceFlowConfig, forKey: .sourceFlowConfig)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tagmap0) in tags {
                try tagsContainer.encode(tagmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let tasks = tasks {
            var tasksContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tasks)
            for tasks0 in tasks {
                try tasksContainer.encode(tasks0)
            }
        }
        if let triggerConfig = triggerConfig {
            try encodeContainer.encode(triggerConfig, forKey: .triggerConfig)
        }
    }
}