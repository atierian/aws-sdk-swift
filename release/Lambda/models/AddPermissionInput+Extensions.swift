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
        if let qualifier = input.operationInput.qualifier {
            let qualifierQueryItem = URLQueryItem(name: "Qualifier".urlPercentEncoding(), value: String(qualifier).urlPercentEncoding())
            input.builder.withQueryItem(qualifierQueryItem)
        }
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

    public typealias MInput = SerializeStepInput<AddPermissionInput>
    public typealias MOutput = OperationOutput<AddPermissionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddPermissionOutputError>
}

extension AddPermissionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case action = "Action"
        case eventSourceToken = "EventSourceToken"
        case principal = "Principal"
        case revisionId = "RevisionId"
        case sourceAccount = "SourceAccount"
        case sourceArn = "SourceArn"
        case statementId = "StatementId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let action = action {
            try encodeContainer.encode(action, forKey: .action)
        }
        if let eventSourceToken = eventSourceToken {
            try encodeContainer.encode(eventSourceToken, forKey: .eventSourceToken)
        }
        if let principal = principal {
            try encodeContainer.encode(principal, forKey: .principal)
        }
        if let revisionId = revisionId {
            try encodeContainer.encode(revisionId, forKey: .revisionId)
        }
        if let sourceAccount = sourceAccount {
            try encodeContainer.encode(sourceAccount, forKey: .sourceAccount)
        }
        if let sourceArn = sourceArn {
            try encodeContainer.encode(sourceArn, forKey: .sourceArn)
        }
        if let statementId = statementId {
            try encodeContainer.encode(statementId, forKey: .statementId)
        }
    }
}