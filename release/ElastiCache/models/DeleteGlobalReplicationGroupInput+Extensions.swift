// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteGlobalReplicationGroupInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteGlobalReplicationGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteGlobalReplicationGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteGlobalReplicationGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteGlobalReplicationGroupInput>
    public typealias MOutput = OperationOutput<DeleteGlobalReplicationGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteGlobalReplicationGroupOutputError>
}

public struct DeleteGlobalReplicationGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteGlobalReplicationGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteGlobalReplicationGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteGlobalReplicationGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteGlobalReplicationGroupInput>
    public typealias MOutput = OperationOutput<DeleteGlobalReplicationGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteGlobalReplicationGroupOutputError>
}

public struct DeleteGlobalReplicationGroupInputBodyMiddleware: Middleware {
    public let id: String = "DeleteGlobalReplicationGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteGlobalReplicationGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteGlobalReplicationGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteGlobalReplicationGroupInput>
    public typealias MOutput = OperationOutput<DeleteGlobalReplicationGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteGlobalReplicationGroupOutputError>
}

extension DeleteGlobalReplicationGroupInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let globalReplicationGroupId = globalReplicationGroupId {
            try container.encode(globalReplicationGroupId, forKey: Key("GlobalReplicationGroupId"))
        }
        if retainPrimaryReplicationGroup != false {
            try container.encode(retainPrimaryReplicationGroup, forKey: Key("RetainPrimaryReplicationGroup"))
        }
        try container.encode("DeleteGlobalReplicationGroup", forKey:Key("Action"))
        try container.encode("2015-02-02", forKey:Key("Version"))
    }
}