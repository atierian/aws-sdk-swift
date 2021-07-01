// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateLoggingConfigurationInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateLoggingConfigurationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateLoggingConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateLoggingConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateLoggingConfigurationInput>
    public typealias MOutput = OperationOutput<UpdateLoggingConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateLoggingConfigurationOutputError>
}

public struct UpdateLoggingConfigurationInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateLoggingConfigurationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateLoggingConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateLoggingConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateLoggingConfigurationInput>
    public typealias MOutput = OperationOutput<UpdateLoggingConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateLoggingConfigurationOutputError>
}

public struct UpdateLoggingConfigurationInputBodyMiddleware: Middleware {
    public let id: String = "UpdateLoggingConfigurationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateLoggingConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateLoggingConfigurationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateLoggingConfigurationInput>
    public typealias MOutput = OperationOutput<UpdateLoggingConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateLoggingConfigurationOutputError>
}

extension UpdateLoggingConfigurationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case firewallArn = "FirewallArn"
        case firewallName = "FirewallName"
        case loggingConfiguration = "LoggingConfiguration"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let firewallArn = firewallArn {
            try encodeContainer.encode(firewallArn, forKey: .firewallArn)
        }
        if let firewallName = firewallName {
            try encodeContainer.encode(firewallName, forKey: .firewallName)
        }
        if let loggingConfiguration = loggingConfiguration {
            try encodeContainer.encode(loggingConfiguration, forKey: .loggingConfiguration)
        }
    }
}