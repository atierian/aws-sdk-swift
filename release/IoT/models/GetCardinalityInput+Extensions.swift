// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetCardinalityInputHeadersMiddleware: Middleware {
    public let id: String = "GetCardinalityInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCardinalityInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCardinalityOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetCardinalityInput>
    public typealias MOutput = OperationOutput<GetCardinalityOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCardinalityOutputError>
}

public struct GetCardinalityInputQueryItemMiddleware: Middleware {
    public let id: String = "GetCardinalityInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCardinalityInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCardinalityOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetCardinalityInput>
    public typealias MOutput = OperationOutput<GetCardinalityOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCardinalityOutputError>
}

public struct GetCardinalityInputBodyMiddleware: Middleware {
    public let id: String = "GetCardinalityInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCardinalityInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCardinalityOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetCardinalityInput>
    public typealias MOutput = OperationOutput<GetCardinalityOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCardinalityOutputError>
}

extension GetCardinalityInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case aggregationField
        case indexName
        case queryString
        case queryVersion
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let aggregationField = aggregationField {
            try encodeContainer.encode(aggregationField, forKey: .aggregationField)
        }
        if let indexName = indexName {
            try encodeContainer.encode(indexName, forKey: .indexName)
        }
        if let queryString = queryString {
            try encodeContainer.encode(queryString, forKey: .queryString)
        }
        if let queryVersion = queryVersion {
            try encodeContainer.encode(queryVersion, forKey: .queryVersion)
        }
    }
}