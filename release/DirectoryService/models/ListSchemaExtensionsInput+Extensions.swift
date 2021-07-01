// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListSchemaExtensionsInputHeadersMiddleware: Middleware {
    public let id: String = "ListSchemaExtensionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListSchemaExtensionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListSchemaExtensionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListSchemaExtensionsInput>
    public typealias MOutput = OperationOutput<ListSchemaExtensionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListSchemaExtensionsOutputError>
}

public struct ListSchemaExtensionsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListSchemaExtensionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListSchemaExtensionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListSchemaExtensionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListSchemaExtensionsInput>
    public typealias MOutput = OperationOutput<ListSchemaExtensionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListSchemaExtensionsOutputError>
}

public struct ListSchemaExtensionsInputBodyMiddleware: Middleware {
    public let id: String = "ListSchemaExtensionsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListSchemaExtensionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListSchemaExtensionsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListSchemaExtensionsInput>
    public typealias MOutput = OperationOutput<ListSchemaExtensionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListSchemaExtensionsOutputError>
}

extension ListSchemaExtensionsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case directoryId = "DirectoryId"
        case limit = "Limit"
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let directoryId = directoryId {
            try encodeContainer.encode(directoryId, forKey: .directoryId)
        }
        if let limit = limit {
            try encodeContainer.encode(limit, forKey: .limit)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}