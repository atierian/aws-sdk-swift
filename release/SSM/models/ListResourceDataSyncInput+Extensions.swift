// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListResourceDataSyncInputHeadersMiddleware: Middleware {
    public let id: String = "ListResourceDataSyncInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListResourceDataSyncInput>,
                  next: H) -> Swift.Result<OperationOutput<ListResourceDataSyncOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListResourceDataSyncInput>
    public typealias MOutput = OperationOutput<ListResourceDataSyncOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListResourceDataSyncOutputError>
}

public struct ListResourceDataSyncInputQueryItemMiddleware: Middleware {
    public let id: String = "ListResourceDataSyncInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListResourceDataSyncInput>,
                  next: H) -> Swift.Result<OperationOutput<ListResourceDataSyncOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListResourceDataSyncInput>
    public typealias MOutput = OperationOutput<ListResourceDataSyncOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListResourceDataSyncOutputError>
}

public struct ListResourceDataSyncInputBodyMiddleware: Middleware {
    public let id: String = "ListResourceDataSyncInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListResourceDataSyncInput>,
                  next: H) -> Swift.Result<OperationOutput<ListResourceDataSyncOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListResourceDataSyncInput>
    public typealias MOutput = OperationOutput<ListResourceDataSyncOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListResourceDataSyncOutputError>
}

extension ListResourceDataSyncInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case syncType = "SyncType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if maxResults != 0 {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let syncType = syncType {
            try encodeContainer.encode(syncType, forKey: .syncType)
        }
    }
}