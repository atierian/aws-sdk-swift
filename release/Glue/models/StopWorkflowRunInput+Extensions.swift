// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StopWorkflowRunInputHeadersMiddleware: Middleware {
    public let id: String = "StopWorkflowRunInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopWorkflowRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StopWorkflowRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopWorkflowRunInput>
    public typealias MOutput = OperationOutput<StopWorkflowRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopWorkflowRunOutputError>
}

public struct StopWorkflowRunInputQueryItemMiddleware: Middleware {
    public let id: String = "StopWorkflowRunInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopWorkflowRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StopWorkflowRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopWorkflowRunInput>
    public typealias MOutput = OperationOutput<StopWorkflowRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopWorkflowRunOutputError>
}

public struct StopWorkflowRunInputBodyMiddleware: Middleware {
    public let id: String = "StopWorkflowRunInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopWorkflowRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StopWorkflowRunOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StopWorkflowRunInput>
    public typealias MOutput = OperationOutput<StopWorkflowRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopWorkflowRunOutputError>
}

extension StopWorkflowRunInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case runId = "RunId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let runId = runId {
            try encodeContainer.encode(runId, forKey: .runId)
        }
    }
}