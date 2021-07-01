// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutVoiceConnectorLoggingConfigurationInputHeadersMiddleware: Middleware {
    public let id: String = "PutVoiceConnectorLoggingConfigurationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutVoiceConnectorLoggingConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutVoiceConnectorLoggingConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutVoiceConnectorLoggingConfigurationInput>
    public typealias MOutput = OperationOutput<PutVoiceConnectorLoggingConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutVoiceConnectorLoggingConfigurationOutputError>
}

public struct PutVoiceConnectorLoggingConfigurationInputQueryItemMiddleware: Middleware {
    public let id: String = "PutVoiceConnectorLoggingConfigurationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutVoiceConnectorLoggingConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutVoiceConnectorLoggingConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutVoiceConnectorLoggingConfigurationInput>
    public typealias MOutput = OperationOutput<PutVoiceConnectorLoggingConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutVoiceConnectorLoggingConfigurationOutputError>
}

public struct PutVoiceConnectorLoggingConfigurationInputBodyMiddleware: Middleware {
    public let id: String = "PutVoiceConnectorLoggingConfigurationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutVoiceConnectorLoggingConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutVoiceConnectorLoggingConfigurationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutVoiceConnectorLoggingConfigurationInput>
    public typealias MOutput = OperationOutput<PutVoiceConnectorLoggingConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutVoiceConnectorLoggingConfigurationOutputError>
}

extension PutVoiceConnectorLoggingConfigurationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case loggingConfiguration = "LoggingConfiguration"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let loggingConfiguration = loggingConfiguration {
            try encodeContainer.encode(loggingConfiguration, forKey: .loggingConfiguration)
        }
    }
}