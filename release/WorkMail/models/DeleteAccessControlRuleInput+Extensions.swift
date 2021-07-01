// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteAccessControlRuleInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteAccessControlRuleInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAccessControlRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAccessControlRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAccessControlRuleInput>
    public typealias MOutput = OperationOutput<DeleteAccessControlRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAccessControlRuleOutputError>
}

public struct DeleteAccessControlRuleInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteAccessControlRuleInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAccessControlRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAccessControlRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAccessControlRuleInput>
    public typealias MOutput = OperationOutput<DeleteAccessControlRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAccessControlRuleOutputError>
}

public struct DeleteAccessControlRuleInputBodyMiddleware: Middleware {
    public let id: String = "DeleteAccessControlRuleInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAccessControlRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAccessControlRuleOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteAccessControlRuleInput>
    public typealias MOutput = OperationOutput<DeleteAccessControlRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAccessControlRuleOutputError>
}

extension DeleteAccessControlRuleInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case organizationId = "OrganizationId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let organizationId = organizationId {
            try encodeContainer.encode(organizationId, forKey: .organizationId)
        }
    }
}