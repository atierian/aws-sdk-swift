// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ModifyVpcEndpointConnectionNotificationInputHeadersMiddleware: Middleware {
    public let id: String = "ModifyVpcEndpointConnectionNotificationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyVpcEndpointConnectionNotificationInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyVpcEndpointConnectionNotificationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyVpcEndpointConnectionNotificationInput>
    public typealias MOutput = OperationOutput<ModifyVpcEndpointConnectionNotificationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyVpcEndpointConnectionNotificationOutputError>
}

public struct ModifyVpcEndpointConnectionNotificationInputQueryItemMiddleware: Middleware {
    public let id: String = "ModifyVpcEndpointConnectionNotificationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyVpcEndpointConnectionNotificationInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyVpcEndpointConnectionNotificationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyVpcEndpointConnectionNotificationInput>
    public typealias MOutput = OperationOutput<ModifyVpcEndpointConnectionNotificationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyVpcEndpointConnectionNotificationOutputError>
}

public struct ModifyVpcEndpointConnectionNotificationInputBodyMiddleware: Middleware {
    public let id: String = "ModifyVpcEndpointConnectionNotificationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyVpcEndpointConnectionNotificationInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyVpcEndpointConnectionNotificationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ModifyVpcEndpointConnectionNotificationInput>
    public typealias MOutput = OperationOutput<ModifyVpcEndpointConnectionNotificationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyVpcEndpointConnectionNotificationOutputError>
}

extension ModifyVpcEndpointConnectionNotificationInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let connectionEvents = connectionEvents {
            if !connectionEvents.isEmpty {
                for (index0, string0) in connectionEvents.enumerated() {
                    var connectionEventsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("ConnectionEvents.\(index0.advanced(by: 1))"))
                    try connectionEventsContainer0.encode(string0, forKey: Key(""))
                }
            }
        }
        if let connectionNotificationArn = connectionNotificationArn {
            try container.encode(connectionNotificationArn, forKey: Key("ConnectionNotificationArn"))
        }
        if let connectionNotificationId = connectionNotificationId {
            try container.encode(connectionNotificationId, forKey: Key("ConnectionNotificationId"))
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        try container.encode("ModifyVpcEndpointConnectionNotification", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}