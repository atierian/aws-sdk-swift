// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StopRelationalDatabaseInputHeadersMiddleware: Middleware {
    public let id: String = "StopRelationalDatabaseInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopRelationalDatabaseInput>,
                  next: H) -> Swift.Result<OperationOutput<StopRelationalDatabaseOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopRelationalDatabaseInput>
    public typealias MOutput = OperationOutput<StopRelationalDatabaseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopRelationalDatabaseOutputError>
}

public struct StopRelationalDatabaseInputQueryItemMiddleware: Middleware {
    public let id: String = "StopRelationalDatabaseInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopRelationalDatabaseInput>,
                  next: H) -> Swift.Result<OperationOutput<StopRelationalDatabaseOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopRelationalDatabaseInput>
    public typealias MOutput = OperationOutput<StopRelationalDatabaseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopRelationalDatabaseOutputError>
}

public struct StopRelationalDatabaseInputBodyMiddleware: Middleware {
    public let id: String = "StopRelationalDatabaseInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopRelationalDatabaseInput>,
                  next: H) -> Swift.Result<OperationOutput<StopRelationalDatabaseOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StopRelationalDatabaseInput>
    public typealias MOutput = OperationOutput<StopRelationalDatabaseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopRelationalDatabaseOutputError>
}

extension StopRelationalDatabaseInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case relationalDatabaseName
        case relationalDatabaseSnapshotName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let relationalDatabaseName = relationalDatabaseName {
            try encodeContainer.encode(relationalDatabaseName, forKey: .relationalDatabaseName)
        }
        if let relationalDatabaseSnapshotName = relationalDatabaseSnapshotName {
            try encodeContainer.encode(relationalDatabaseSnapshotName, forKey: .relationalDatabaseSnapshotName)
        }
    }
}