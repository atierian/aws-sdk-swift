// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteIpGroupInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteIpGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteIpGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteIpGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteIpGroupInput>
    public typealias MOutput = OperationOutput<DeleteIpGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteIpGroupOutputError>
}

public struct DeleteIpGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteIpGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteIpGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteIpGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteIpGroupInput>
    public typealias MOutput = OperationOutput<DeleteIpGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteIpGroupOutputError>
}

public struct DeleteIpGroupInputBodyMiddleware: Middleware {
    public let id: String = "DeleteIpGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteIpGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteIpGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteIpGroupInput>
    public typealias MOutput = OperationOutput<DeleteIpGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteIpGroupOutputError>
}

extension DeleteIpGroupInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case groupId = "GroupId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let groupId = groupId {
            try encodeContainer.encode(groupId, forKey: .groupId)
        }
    }
}