// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartFlowInputHeadersMiddleware: Middleware {
    public let id: String = "StartFlowInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartFlowInput>,
                  next: H) -> Swift.Result<OperationOutput<StartFlowOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartFlowInput>
    public typealias MOutput = OperationOutput<StartFlowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartFlowOutputError>
}

public struct StartFlowInputQueryItemMiddleware: Middleware {
    public let id: String = "StartFlowInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartFlowInput>,
                  next: H) -> Swift.Result<OperationOutput<StartFlowOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartFlowInput>
    public typealias MOutput = OperationOutput<StartFlowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartFlowOutputError>
}

public struct StartFlowInputBodyMiddleware: Middleware {
    public let id: String = "StartFlowInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartFlowInput>,
                  next: H) -> Swift.Result<OperationOutput<StartFlowOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StartFlowInput>
    public typealias MOutput = OperationOutput<StartFlowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartFlowOutputError>
}

extension StartFlowInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case flowName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let flowName = flowName {
            try encodeContainer.encode(flowName, forKey: .flowName)
        }
    }
}