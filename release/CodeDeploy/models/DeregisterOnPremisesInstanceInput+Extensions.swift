// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeregisterOnPremisesInstanceInputHeadersMiddleware: Middleware {
    public let id: String = "DeregisterOnPremisesInstanceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterOnPremisesInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterOnPremisesInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeregisterOnPremisesInstanceInput>
    public typealias MOutput = OperationOutput<DeregisterOnPremisesInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterOnPremisesInstanceOutputError>
}

public struct DeregisterOnPremisesInstanceInputQueryItemMiddleware: Middleware {
    public let id: String = "DeregisterOnPremisesInstanceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterOnPremisesInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterOnPremisesInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeregisterOnPremisesInstanceInput>
    public typealias MOutput = OperationOutput<DeregisterOnPremisesInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterOnPremisesInstanceOutputError>
}

public struct DeregisterOnPremisesInstanceInputBodyMiddleware: Middleware {
    public let id: String = "DeregisterOnPremisesInstanceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterOnPremisesInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterOnPremisesInstanceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeregisterOnPremisesInstanceInput>
    public typealias MOutput = OperationOutput<DeregisterOnPremisesInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterOnPremisesInstanceOutputError>
}

extension DeregisterOnPremisesInstanceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case instanceName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let instanceName = instanceName {
            try encodeContainer.encode(instanceName, forKey: .instanceName)
        }
    }
}