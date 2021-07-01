// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListTablesInputHeadersMiddleware: Middleware {
    public let id: String = "ListTablesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListTablesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListTablesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListTablesInput>
    public typealias MOutput = OperationOutput<ListTablesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListTablesOutputError>
}

public struct ListTablesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListTablesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListTablesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListTablesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListTablesInput>
    public typealias MOutput = OperationOutput<ListTablesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListTablesOutputError>
}

public struct ListTablesInputBodyMiddleware: Middleware {
    public let id: String = "ListTablesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListTablesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListTablesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListTablesInput>
    public typealias MOutput = OperationOutput<ListTablesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListTablesOutputError>
}

extension ListTablesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case exclusiveStartTableName = "ExclusiveStartTableName"
        case limit = "Limit"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let exclusiveStartTableName = exclusiveStartTableName {
            try encodeContainer.encode(exclusiveStartTableName, forKey: .exclusiveStartTableName)
        }
        if let limit = limit {
            try encodeContainer.encode(limit, forKey: .limit)
        }
    }
}