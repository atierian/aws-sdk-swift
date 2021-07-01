// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ModifyAvailabilityZoneGroupInputHeadersMiddleware: Middleware {
    public let id: String = "ModifyAvailabilityZoneGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyAvailabilityZoneGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyAvailabilityZoneGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyAvailabilityZoneGroupInput>
    public typealias MOutput = OperationOutput<ModifyAvailabilityZoneGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyAvailabilityZoneGroupOutputError>
}

public struct ModifyAvailabilityZoneGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "ModifyAvailabilityZoneGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyAvailabilityZoneGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyAvailabilityZoneGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyAvailabilityZoneGroupInput>
    public typealias MOutput = OperationOutput<ModifyAvailabilityZoneGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyAvailabilityZoneGroupOutputError>
}

public struct ModifyAvailabilityZoneGroupInputBodyMiddleware: Middleware {
    public let id: String = "ModifyAvailabilityZoneGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyAvailabilityZoneGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyAvailabilityZoneGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ModifyAvailabilityZoneGroupInput>
    public typealias MOutput = OperationOutput<ModifyAvailabilityZoneGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyAvailabilityZoneGroupOutputError>
}

extension ModifyAvailabilityZoneGroupInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let groupName = groupName {
            try container.encode(groupName, forKey: Key("GroupName"))
        }
        if let optInStatus = optInStatus {
            try container.encode(optInStatus, forKey: Key("OptInStatus"))
        }
        try container.encode("ModifyAvailabilityZoneGroup", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}