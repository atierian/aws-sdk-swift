// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartInstanceInputHeadersMiddleware: Middleware {
    public let id: String = "StartInstanceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<StartInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartInstanceInput>
    public typealias MOutput = OperationOutput<StartInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartInstanceOutputError>
}

public struct StartInstanceInputQueryItemMiddleware: Middleware {
    public let id: String = "StartInstanceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<StartInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartInstanceInput>
    public typealias MOutput = OperationOutput<StartInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartInstanceOutputError>
}

public struct StartInstanceInputBodyMiddleware: Middleware {
    public let id: String = "StartInstanceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<StartInstanceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StartInstanceInput>
    public typealias MOutput = OperationOutput<StartInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartInstanceOutputError>
}

extension StartInstanceInput: Encodable, Reflection {
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