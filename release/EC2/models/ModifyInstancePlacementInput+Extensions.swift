// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ModifyInstancePlacementInputHeadersMiddleware: Middleware {
    public let id: String = "ModifyInstancePlacementInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyInstancePlacementInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyInstancePlacementOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyInstancePlacementInput>
    public typealias MOutput = OperationOutput<ModifyInstancePlacementOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyInstancePlacementOutputError>
}

public struct ModifyInstancePlacementInputQueryItemMiddleware: Middleware {
    public let id: String = "ModifyInstancePlacementInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyInstancePlacementInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyInstancePlacementOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyInstancePlacementInput>
    public typealias MOutput = OperationOutput<ModifyInstancePlacementOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyInstancePlacementOutputError>
}

public struct ModifyInstancePlacementInputBodyMiddleware: Middleware {
    public let id: String = "ModifyInstancePlacementInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyInstancePlacementInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyInstancePlacementOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ModifyInstancePlacementInput>
    public typealias MOutput = OperationOutput<ModifyInstancePlacementOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyInstancePlacementOutputError>
}

extension ModifyInstancePlacementInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let affinity = affinity {
            try container.encode(affinity, forKey: Key("Affinity"))
        }
        if let groupName = groupName {
            try container.encode(groupName, forKey: Key("GroupName"))
        }
        if let hostId = hostId {
            try container.encode(hostId, forKey: Key("HostId"))
        }
        if let hostResourceGroupArn = hostResourceGroupArn {
            try container.encode(hostResourceGroupArn, forKey: Key("HostResourceGroupArn"))
        }
        if let instanceId = instanceId {
            try container.encode(instanceId, forKey: Key("InstanceId"))
        }
        if partitionNumber != 0 {
            try container.encode(partitionNumber, forKey: Key("PartitionNumber"))
        }
        if let tenancy = tenancy {
            try container.encode(tenancy, forKey: Key("Tenancy"))
        }
        try container.encode("ModifyInstancePlacement", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}