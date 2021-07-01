// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateConfigurationTemplateInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateConfigurationTemplateInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateConfigurationTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateConfigurationTemplateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateConfigurationTemplateInput>
    public typealias MOutput = OperationOutput<UpdateConfigurationTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateConfigurationTemplateOutputError>
}

public struct UpdateConfigurationTemplateInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateConfigurationTemplateInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateConfigurationTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateConfigurationTemplateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateConfigurationTemplateInput>
    public typealias MOutput = OperationOutput<UpdateConfigurationTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateConfigurationTemplateOutputError>
}

public struct UpdateConfigurationTemplateInputBodyMiddleware: Middleware {
    public let id: String = "UpdateConfigurationTemplateInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateConfigurationTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateConfigurationTemplateOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateConfigurationTemplateInput>
    public typealias MOutput = OperationOutput<UpdateConfigurationTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateConfigurationTemplateOutputError>
}

extension UpdateConfigurationTemplateInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let applicationName = applicationName {
            try container.encode(applicationName, forKey: Key("ApplicationName"))
        }
        if let description = description {
            try container.encode(description, forKey: Key("Description"))
        }
        if let optionSettings = optionSettings {
            var optionSettingsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("OptionSettings"))
            for (index0, configurationoptionsetting0) in optionSettings.enumerated() {
                try optionSettingsContainer.encode(configurationoptionsetting0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        if let optionsToRemove = optionsToRemove {
            var optionsToRemoveContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("OptionsToRemove"))
            for (index0, optionspecification0) in optionsToRemove.enumerated() {
                try optionsToRemoveContainer.encode(optionspecification0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        if let templateName = templateName {
            try container.encode(templateName, forKey: Key("TemplateName"))
        }
        try container.encode("UpdateConfigurationTemplate", forKey:Key("Action"))
        try container.encode("2010-12-01", forKey:Key("Version"))
    }
}