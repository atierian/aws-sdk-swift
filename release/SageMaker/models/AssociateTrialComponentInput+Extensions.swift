// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AssociateTrialComponentInputHeadersMiddleware: Middleware {
    public let id: String = "AssociateTrialComponentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateTrialComponentInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateTrialComponentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateTrialComponentInput>
    public typealias MOutput = OperationOutput<AssociateTrialComponentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateTrialComponentOutputError>
}

public struct AssociateTrialComponentInputQueryItemMiddleware: Middleware {
    public let id: String = "AssociateTrialComponentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateTrialComponentInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateTrialComponentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateTrialComponentInput>
    public typealias MOutput = OperationOutput<AssociateTrialComponentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateTrialComponentOutputError>
}

public struct AssociateTrialComponentInputBodyMiddleware: Middleware {
    public let id: String = "AssociateTrialComponentInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateTrialComponentInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateTrialComponentOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AssociateTrialComponentInput>
    public typealias MOutput = OperationOutput<AssociateTrialComponentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateTrialComponentOutputError>
}

extension AssociateTrialComponentInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case trialComponentName = "TrialComponentName"
        case trialName = "TrialName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let trialComponentName = trialComponentName {
            try encodeContainer.encode(trialComponentName, forKey: .trialComponentName)
        }
        if let trialName = trialName {
            try encodeContainer.encode(trialName, forKey: .trialName)
        }
    }
}