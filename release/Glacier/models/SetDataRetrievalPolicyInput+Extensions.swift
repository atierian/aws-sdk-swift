// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SetDataRetrievalPolicyInputHeadersMiddleware: Middleware {
    public let id: String = "SetDataRetrievalPolicyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SetDataRetrievalPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<SetDataRetrievalPolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SetDataRetrievalPolicyInput>
    public typealias MOutput = OperationOutput<SetDataRetrievalPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SetDataRetrievalPolicyOutputError>
}

public struct SetDataRetrievalPolicyInputQueryItemMiddleware: Middleware {
    public let id: String = "SetDataRetrievalPolicyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SetDataRetrievalPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<SetDataRetrievalPolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SetDataRetrievalPolicyInput>
    public typealias MOutput = OperationOutput<SetDataRetrievalPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SetDataRetrievalPolicyOutputError>
}

public struct SetDataRetrievalPolicyInputBodyMiddleware: Middleware {
    public let id: String = "SetDataRetrievalPolicyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SetDataRetrievalPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<SetDataRetrievalPolicyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<SetDataRetrievalPolicyInput>
    public typealias MOutput = OperationOutput<SetDataRetrievalPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SetDataRetrievalPolicyOutputError>
}

extension SetDataRetrievalPolicyInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case policy = "Policy"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let policy = policy {
            try encodeContainer.encode(policy, forKey: .policy)
        }
    }
}