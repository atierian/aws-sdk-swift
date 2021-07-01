// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateTrialComponentInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateTrialComponentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTrialComponentInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTrialComponentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateTrialComponentInput>
    public typealias MOutput = OperationOutput<UpdateTrialComponentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTrialComponentOutputError>
}

public struct UpdateTrialComponentInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateTrialComponentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTrialComponentInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTrialComponentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateTrialComponentInput>
    public typealias MOutput = OperationOutput<UpdateTrialComponentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTrialComponentOutputError>
}

public struct UpdateTrialComponentInputBodyMiddleware: Middleware {
    public let id: String = "UpdateTrialComponentInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTrialComponentInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTrialComponentOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateTrialComponentInput>
    public typealias MOutput = OperationOutput<UpdateTrialComponentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTrialComponentOutputError>
}

extension UpdateTrialComponentInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case displayName = "DisplayName"
        case endTime = "EndTime"
        case inputArtifacts = "InputArtifacts"
        case inputArtifactsToRemove = "InputArtifactsToRemove"
        case outputArtifacts = "OutputArtifacts"
        case outputArtifactsToRemove = "OutputArtifactsToRemove"
        case parameters = "Parameters"
        case parametersToRemove = "ParametersToRemove"
        case startTime = "StartTime"
        case status = "Status"
        case trialComponentName = "TrialComponentName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let displayName = displayName {
            try encodeContainer.encode(displayName, forKey: .displayName)
        }
        if let endTime = endTime {
            try encodeContainer.encode(endTime.timeIntervalSince1970, forKey: .endTime)
        }
        if let inputArtifacts = inputArtifacts {
            var inputArtifactsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .inputArtifacts)
            for (dictKey0, trialcomponentartifacts0) in inputArtifacts {
                try inputArtifactsContainer.encode(trialcomponentartifacts0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let inputArtifactsToRemove = inputArtifactsToRemove {
            var inputArtifactsToRemoveContainer = encodeContainer.nestedUnkeyedContainer(forKey: .inputArtifactsToRemove)
            for listtrialcomponentkey2560 in inputArtifactsToRemove {
                try inputArtifactsToRemoveContainer.encode(listtrialcomponentkey2560)
            }
        }
        if let outputArtifacts = outputArtifacts {
            var outputArtifactsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .outputArtifacts)
            for (dictKey0, trialcomponentartifacts0) in outputArtifacts {
                try outputArtifactsContainer.encode(trialcomponentartifacts0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let outputArtifactsToRemove = outputArtifactsToRemove {
            var outputArtifactsToRemoveContainer = encodeContainer.nestedUnkeyedContainer(forKey: .outputArtifactsToRemove)
            for listtrialcomponentkey2560 in outputArtifactsToRemove {
                try outputArtifactsToRemoveContainer.encode(listtrialcomponentkey2560)
            }
        }
        if let parameters = parameters {
            var parametersContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .parameters)
            for (dictKey0, trialcomponentparameters0) in parameters {
                try parametersContainer.encode(trialcomponentparameters0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let parametersToRemove = parametersToRemove {
            var parametersToRemoveContainer = encodeContainer.nestedUnkeyedContainer(forKey: .parametersToRemove)
            for listtrialcomponentkey2560 in parametersToRemove {
                try parametersToRemoveContainer.encode(listtrialcomponentkey2560)
            }
        }
        if let startTime = startTime {
            try encodeContainer.encode(startTime.timeIntervalSince1970, forKey: .startTime)
        }
        if let status = status {
            try encodeContainer.encode(status, forKey: .status)
        }
        if let trialComponentName = trialComponentName {
            try encodeContainer.encode(trialComponentName, forKey: .trialComponentName)
        }
    }
}