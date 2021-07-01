// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteStreamKeyInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteStreamKeyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteStreamKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteStreamKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteStreamKeyInput>
    public typealias MOutput = OperationOutput<DeleteStreamKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteStreamKeyOutputError>
}

public struct DeleteStreamKeyInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteStreamKeyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteStreamKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteStreamKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteStreamKeyInput>
    public typealias MOutput = OperationOutput<DeleteStreamKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteStreamKeyOutputError>
}

public struct DeleteStreamKeyInputBodyMiddleware: Middleware {
    public let id: String = "DeleteStreamKeyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteStreamKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteStreamKeyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteStreamKeyInput>
    public typealias MOutput = OperationOutput<DeleteStreamKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteStreamKeyOutputError>
}

extension DeleteStreamKeyInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
    }
}