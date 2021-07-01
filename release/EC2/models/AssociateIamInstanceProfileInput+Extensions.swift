// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AssociateIamInstanceProfileInputHeadersMiddleware: Middleware {
    public let id: String = "AssociateIamInstanceProfileInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateIamInstanceProfileInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateIamInstanceProfileOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateIamInstanceProfileInput>
    public typealias MOutput = OperationOutput<AssociateIamInstanceProfileOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateIamInstanceProfileOutputError>
}

public struct AssociateIamInstanceProfileInputQueryItemMiddleware: Middleware {
    public let id: String = "AssociateIamInstanceProfileInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateIamInstanceProfileInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateIamInstanceProfileOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateIamInstanceProfileInput>
    public typealias MOutput = OperationOutput<AssociateIamInstanceProfileOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateIamInstanceProfileOutputError>
}

public struct AssociateIamInstanceProfileInputBodyMiddleware: Middleware {
    public let id: String = "AssociateIamInstanceProfileInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateIamInstanceProfileInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateIamInstanceProfileOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AssociateIamInstanceProfileInput>
    public typealias MOutput = OperationOutput<AssociateIamInstanceProfileOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateIamInstanceProfileOutputError>
}

extension AssociateIamInstanceProfileInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let iamInstanceProfile = iamInstanceProfile {
            try container.encode(iamInstanceProfile, forKey: Key("IamInstanceProfile"))
        }
        if let instanceId = instanceId {
            try container.encode(instanceId, forKey: Key("InstanceId"))
        }
        try container.encode("AssociateIamInstanceProfile", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}