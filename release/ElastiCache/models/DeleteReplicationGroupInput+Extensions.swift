// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteReplicationGroupInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteReplicationGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteReplicationGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteReplicationGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteReplicationGroupInput>
    public typealias MOutput = OperationOutput<DeleteReplicationGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteReplicationGroupOutputError>
}

public struct DeleteReplicationGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteReplicationGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteReplicationGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteReplicationGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteReplicationGroupInput>
    public typealias MOutput = OperationOutput<DeleteReplicationGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteReplicationGroupOutputError>
}

public struct DeleteReplicationGroupInputBodyMiddleware: Middleware {
    public let id: String = "DeleteReplicationGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteReplicationGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteReplicationGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteReplicationGroupInput>
    public typealias MOutput = OperationOutput<DeleteReplicationGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteReplicationGroupOutputError>
}

extension DeleteReplicationGroupInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let finalSnapshotIdentifier = finalSnapshotIdentifier {
            try container.encode(finalSnapshotIdentifier, forKey: Key("FinalSnapshotIdentifier"))
        }
        if let replicationGroupId = replicationGroupId {
            try container.encode(replicationGroupId, forKey: Key("ReplicationGroupId"))
        }
        if let retainPrimaryCluster = retainPrimaryCluster {
            try container.encode(retainPrimaryCluster, forKey: Key("RetainPrimaryCluster"))
        }
        try container.encode("DeleteReplicationGroup", forKey:Key("Action"))
        try container.encode("2015-02-02", forKey:Key("Version"))
    }
}