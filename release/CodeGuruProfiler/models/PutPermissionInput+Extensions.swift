// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutPermissionInputHeadersMiddleware: Middleware {
    public let id: String = "PutPermissionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutPermissionInput>,
                  next: H) -> Swift.Result<OperationOutput<PutPermissionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutPermissionInput>
    public typealias MOutput = OperationOutput<PutPermissionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutPermissionOutputError>
}

public struct PutPermissionInputQueryItemMiddleware: Middleware {
    public let id: String = "PutPermissionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutPermissionInput>,
                  next: H) -> Swift.Result<OperationOutput<PutPermissionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutPermissionInput>
    public typealias MOutput = OperationOutput<PutPermissionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutPermissionOutputError>
}

public struct PutPermissionInputBodyMiddleware: Middleware {
    public let id: String = "PutPermissionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutPermissionInput>,
                  next: H) -> Swift.Result<OperationOutput<PutPermissionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutPermissionInput>
    public typealias MOutput = OperationOutput<PutPermissionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutPermissionOutputError>
}

extension PutPermissionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case principals
        case revisionId
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let principals = principals {
            var principalsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .principals)
            for principals0 in principals {
                try principalsContainer.encode(principals0)
            }
        }
        if let revisionId = revisionId {
            try encodeContainer.encode(revisionId, forKey: .revisionId)
        }
    }
}