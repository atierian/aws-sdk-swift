// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AcknowledgeJobInputHeadersMiddleware: Middleware {
    public let id: String = "AcknowledgeJobInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcknowledgeJobInput>,
                  next: H) -> Swift.Result<OperationOutput<AcknowledgeJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AcknowledgeJobInput>
    public typealias MOutput = OperationOutput<AcknowledgeJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcknowledgeJobOutputError>
}

public struct AcknowledgeJobInputQueryItemMiddleware: Middleware {
    public let id: String = "AcknowledgeJobInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcknowledgeJobInput>,
                  next: H) -> Swift.Result<OperationOutput<AcknowledgeJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AcknowledgeJobInput>
    public typealias MOutput = OperationOutput<AcknowledgeJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcknowledgeJobOutputError>
}

public struct AcknowledgeJobInputBodyMiddleware: Middleware {
    public let id: String = "AcknowledgeJobInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcknowledgeJobInput>,
                  next: H) -> Swift.Result<OperationOutput<AcknowledgeJobOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AcknowledgeJobInput>
    public typealias MOutput = OperationOutput<AcknowledgeJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcknowledgeJobOutputError>
}

extension AcknowledgeJobInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case jobId
        case nonce
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let jobId = jobId {
            try encodeContainer.encode(jobId, forKey: .jobId)
        }
        if let nonce = nonce {
            try encodeContainer.encode(nonce, forKey: .nonce)
        }
    }
}