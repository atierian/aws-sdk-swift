// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AddPermissionInputHeadersMiddleware: Middleware {
    public let id: String = "AddPermissionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddPermissionInput>,
                  next: H) -> Swift.Result<OperationOutput<AddPermissionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AddPermissionInput>
    public typealias MOutput = OperationOutput<AddPermissionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddPermissionOutputError>
}

public struct AddPermissionInputQueryItemMiddleware: Middleware {
    public let id: String = "AddPermissionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddPermissionInput>,
                  next: H) -> Swift.Result<OperationOutput<AddPermissionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AddPermissionInput>
    public typealias MOutput = OperationOutput<AddPermissionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddPermissionOutputError>
}

public struct AddPermissionInputBodyMiddleware: Middleware {
    public let id: String = "AddPermissionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddPermissionInput>,
                  next: H) -> Swift.Result<OperationOutput<AddPermissionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AddPermissionInput>
    public typealias MOutput = OperationOutput<AddPermissionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddPermissionOutputError>
}

extension AddPermissionInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let aWSAccountIds = aWSAccountIds {
            if !aWSAccountIds.isEmpty {
                for (index0, string0) in aWSAccountIds.enumerated() {
                    var aWSAccountIdsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("AWSAccountId.\(index0.advanced(by: 1))"))
                    try aWSAccountIdsContainer0.encode(string0, forKey: Key(""))
                }
            }
        }
        if let actions = actions {
            if !actions.isEmpty {
                for (index0, string0) in actions.enumerated() {
                    var actionsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("ActionName.\(index0.advanced(by: 1))"))
                    try actionsContainer0.encode(string0, forKey: Key(""))
                }
            }
        }
        if let label = label {
            try container.encode(label, forKey: Key("Label"))
        }
        if let queueUrl = queueUrl {
            try container.encode(queueUrl, forKey: Key("QueueUrl"))
        }
        try container.encode("AddPermission", forKey:Key("Action"))
        try container.encode("2012-11-05", forKey:Key("Version"))
    }
}