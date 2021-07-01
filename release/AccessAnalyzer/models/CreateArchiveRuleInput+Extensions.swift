// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateArchiveRuleInputHeadersMiddleware: Middleware {
    public let id: String = "CreateArchiveRuleInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateArchiveRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateArchiveRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateArchiveRuleInput>
    public typealias MOutput = OperationOutput<CreateArchiveRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateArchiveRuleOutputError>
}

public struct CreateArchiveRuleInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateArchiveRuleInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateArchiveRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateArchiveRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateArchiveRuleInput>
    public typealias MOutput = OperationOutput<CreateArchiveRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateArchiveRuleOutputError>
}

public struct CreateArchiveRuleInputBodyMiddleware: Middleware {
    public let id: String = "CreateArchiveRuleInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateArchiveRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateArchiveRuleOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateArchiveRuleInput>
    public typealias MOutput = OperationOutput<CreateArchiveRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateArchiveRuleOutputError>
}

extension CreateArchiveRuleInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientToken
        case filter
        case ruleName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientToken = clientToken {
            try encodeContainer.encode(clientToken, forKey: .clientToken)
        }
        if let filter = filter {
            var filterContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .filter)
            for (dictKey0, filtercriteriamap0) in filter {
                try filterContainer.encode(filtercriteriamap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let ruleName = ruleName {
            try encodeContainer.encode(ruleName, forKey: .ruleName)
        }
    }
}