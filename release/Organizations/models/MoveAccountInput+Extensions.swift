// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct MoveAccountInputHeadersMiddleware: Middleware {
    public let id: String = "MoveAccountInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<MoveAccountInput>,
                  next: H) -> Swift.Result<OperationOutput<MoveAccountOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<MoveAccountInput>
    public typealias MOutput = OperationOutput<MoveAccountOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<MoveAccountOutputError>
}

public struct MoveAccountInputQueryItemMiddleware: Middleware {
    public let id: String = "MoveAccountInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<MoveAccountInput>,
                  next: H) -> Swift.Result<OperationOutput<MoveAccountOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<MoveAccountInput>
    public typealias MOutput = OperationOutput<MoveAccountOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<MoveAccountOutputError>
}

public struct MoveAccountInputBodyMiddleware: Middleware {
    public let id: String = "MoveAccountInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<MoveAccountInput>,
                  next: H) -> Swift.Result<OperationOutput<MoveAccountOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<MoveAccountInput>
    public typealias MOutput = OperationOutput<MoveAccountOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<MoveAccountOutputError>
}

extension MoveAccountInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accountId = "AccountId"
        case destinationParentId = "DestinationParentId"
        case sourceParentId = "SourceParentId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accountId = accountId {
            try encodeContainer.encode(accountId, forKey: .accountId)
        }
        if let destinationParentId = destinationParentId {
            try encodeContainer.encode(destinationParentId, forKey: .destinationParentId)
        }
        if let sourceParentId = sourceParentId {
            try encodeContainer.encode(sourceParentId, forKey: .sourceParentId)
        }
    }
}