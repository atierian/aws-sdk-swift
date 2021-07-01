// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct FinalizeCutoverInputHeadersMiddleware: Middleware {
    public let id: String = "FinalizeCutoverInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<FinalizeCutoverInput>,
                  next: H) -> Swift.Result<OperationOutput<FinalizeCutoverOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<FinalizeCutoverInput>
    public typealias MOutput = OperationOutput<FinalizeCutoverOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<FinalizeCutoverOutputError>
}

public struct FinalizeCutoverInputQueryItemMiddleware: Middleware {
    public let id: String = "FinalizeCutoverInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<FinalizeCutoverInput>,
                  next: H) -> Swift.Result<OperationOutput<FinalizeCutoverOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<FinalizeCutoverInput>
    public typealias MOutput = OperationOutput<FinalizeCutoverOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<FinalizeCutoverOutputError>
}

public struct FinalizeCutoverInputBodyMiddleware: Middleware {
    public let id: String = "FinalizeCutoverInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<FinalizeCutoverInput>,
                  next: H) -> Swift.Result<OperationOutput<FinalizeCutoverOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<FinalizeCutoverInput>
    public typealias MOutput = OperationOutput<FinalizeCutoverOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<FinalizeCutoverOutputError>
}

extension FinalizeCutoverInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case sourceServerID
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let sourceServerID = sourceServerID {
            try encodeContainer.encode(sourceServerID, forKey: .sourceServerID)
        }
    }
}