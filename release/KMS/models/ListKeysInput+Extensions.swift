// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListKeysInputHeadersMiddleware: Middleware {
    public let id: String = "ListKeysInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListKeysInput>,
                  next: H) -> Swift.Result<OperationOutput<ListKeysOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListKeysInput>
    public typealias MOutput = OperationOutput<ListKeysOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListKeysOutputError>
}

public struct ListKeysInputQueryItemMiddleware: Middleware {
    public let id: String = "ListKeysInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListKeysInput>,
                  next: H) -> Swift.Result<OperationOutput<ListKeysOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListKeysInput>
    public typealias MOutput = OperationOutput<ListKeysOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListKeysOutputError>
}

public struct ListKeysInputBodyMiddleware: Middleware {
    public let id: String = "ListKeysInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListKeysInput>,
                  next: H) -> Swift.Result<OperationOutput<ListKeysOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListKeysInput>
    public typealias MOutput = OperationOutput<ListKeysOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListKeysOutputError>
}

extension ListKeysInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case limit = "Limit"
        case marker = "Marker"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let limit = limit {
            try encodeContainer.encode(limit, forKey: .limit)
        }
        if let marker = marker {
            try encodeContainer.encode(marker, forKey: .marker)
        }
    }
}