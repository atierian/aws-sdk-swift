// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteClusterSubnetGroupInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteClusterSubnetGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteClusterSubnetGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteClusterSubnetGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteClusterSubnetGroupInput>
    public typealias MOutput = OperationOutput<DeleteClusterSubnetGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteClusterSubnetGroupOutputError>
}

public struct DeleteClusterSubnetGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteClusterSubnetGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteClusterSubnetGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteClusterSubnetGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteClusterSubnetGroupInput>
    public typealias MOutput = OperationOutput<DeleteClusterSubnetGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteClusterSubnetGroupOutputError>
}

public struct DeleteClusterSubnetGroupInputBodyMiddleware: Middleware {
    public let id: String = "DeleteClusterSubnetGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteClusterSubnetGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteClusterSubnetGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteClusterSubnetGroupInput>
    public typealias MOutput = OperationOutput<DeleteClusterSubnetGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteClusterSubnetGroupOutputError>
}

extension DeleteClusterSubnetGroupInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let clusterSubnetGroupName = clusterSubnetGroupName {
            try container.encode(clusterSubnetGroupName, forKey: Key("ClusterSubnetGroupName"))
        }
        try container.encode("DeleteClusterSubnetGroup", forKey:Key("Action"))
        try container.encode("2012-12-01", forKey:Key("Version"))
    }
}