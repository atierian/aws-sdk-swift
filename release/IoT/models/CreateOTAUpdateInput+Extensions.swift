// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateOTAUpdateInputHeadersMiddleware: Middleware {
    public let id: String = "CreateOTAUpdateInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateOTAUpdateInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateOTAUpdateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateOTAUpdateInput>
    public typealias MOutput = OperationOutput<CreateOTAUpdateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateOTAUpdateOutputError>
}

public struct CreateOTAUpdateInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateOTAUpdateInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateOTAUpdateInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateOTAUpdateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateOTAUpdateInput>
    public typealias MOutput = OperationOutput<CreateOTAUpdateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateOTAUpdateOutputError>
}

public struct CreateOTAUpdateInputBodyMiddleware: Middleware {
    public let id: String = "CreateOTAUpdateInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateOTAUpdateInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateOTAUpdateOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateOTAUpdateInput>
    public typealias MOutput = OperationOutput<CreateOTAUpdateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateOTAUpdateOutputError>
}

extension CreateOTAUpdateInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case additionalParameters
        case awsJobAbortConfig
        case awsJobExecutionsRolloutConfig
        case awsJobPresignedUrlConfig
        case awsJobTimeoutConfig
        case description
        case files
        case protocols
        case roleArn
        case tags
        case targetSelection
        case targets
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let additionalParameters = additionalParameters {
            var additionalParametersContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .additionalParameters)
            for (dictKey0, additionalparametermap0) in additionalParameters {
                try additionalParametersContainer.encode(additionalparametermap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let awsJobAbortConfig = awsJobAbortConfig {
            try encodeContainer.encode(awsJobAbortConfig, forKey: .awsJobAbortConfig)
        }
        if let awsJobExecutionsRolloutConfig = awsJobExecutionsRolloutConfig {
            try encodeContainer.encode(awsJobExecutionsRolloutConfig, forKey: .awsJobExecutionsRolloutConfig)
        }
        if let awsJobPresignedUrlConfig = awsJobPresignedUrlConfig {
            try encodeContainer.encode(awsJobPresignedUrlConfig, forKey: .awsJobPresignedUrlConfig)
        }
        if let awsJobTimeoutConfig = awsJobTimeoutConfig {
            try encodeContainer.encode(awsJobTimeoutConfig, forKey: .awsJobTimeoutConfig)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let files = files {
            var filesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .files)
            for otaupdatefiles0 in files {
                try filesContainer.encode(otaupdatefiles0)
            }
        }
        if let protocols = protocols {
            var protocolsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .protocols)
            for protocols0 in protocols {
                try protocolsContainer.encode(protocols0.rawValue)
            }
        }
        if let roleArn = roleArn {
            try encodeContainer.encode(roleArn, forKey: .roleArn)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
        if let targetSelection = targetSelection {
            try encodeContainer.encode(targetSelection.rawValue, forKey: .targetSelection)
        }
        if let targets = targets {
            var targetsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .targets)
            for targets0 in targets {
                try targetsContainer.encode(targets0)
            }
        }
    }
}