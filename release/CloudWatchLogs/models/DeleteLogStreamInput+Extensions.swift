// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteLogStreamInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteLogStreamInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteLogStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteLogStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteLogStreamInput>
    public typealias MOutput = OperationOutput<DeleteLogStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteLogStreamOutputError>
}

public struct DeleteLogStreamInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteLogStreamInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteLogStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteLogStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteLogStreamInput>
    public typealias MOutput = OperationOutput<DeleteLogStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteLogStreamOutputError>
}

public struct DeleteLogStreamInputBodyMiddleware: Middleware {
    public let id: String = "DeleteLogStreamInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteLogStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteLogStreamOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteLogStreamInput>
    public typealias MOutput = OperationOutput<DeleteLogStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteLogStreamOutputError>
}

extension DeleteLogStreamInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case logGroupName
        case logStreamName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let logGroupName = logGroupName {
            try encodeContainer.encode(logGroupName, forKey: .logGroupName)
        }
        if let logStreamName = logStreamName {
            try encodeContainer.encode(logStreamName, forKey: .logStreamName)
        }
    }
}