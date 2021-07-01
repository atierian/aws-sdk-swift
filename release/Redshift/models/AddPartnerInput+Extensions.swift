// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AddPartnerInputHeadersMiddleware: Middleware {
    public let id: String = "AddPartnerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddPartnerInput>,
                  next: H) -> Swift.Result<OperationOutput<AddPartnerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AddPartnerInput>
    public typealias MOutput = OperationOutput<AddPartnerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddPartnerOutputError>
}

public struct AddPartnerInputQueryItemMiddleware: Middleware {
    public let id: String = "AddPartnerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddPartnerInput>,
                  next: H) -> Swift.Result<OperationOutput<AddPartnerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AddPartnerInput>
    public typealias MOutput = OperationOutput<AddPartnerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddPartnerOutputError>
}

public struct AddPartnerInputBodyMiddleware: Middleware {
    public let id: String = "AddPartnerInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddPartnerInput>,
                  next: H) -> Swift.Result<OperationOutput<AddPartnerOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AddPartnerInput>
    public typealias MOutput = OperationOutput<AddPartnerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddPartnerOutputError>
}

extension AddPartnerInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let accountId = accountId {
            try container.encode(accountId, forKey: Key("AccountId"))
        }
        if let clusterIdentifier = clusterIdentifier {
            try container.encode(clusterIdentifier, forKey: Key("ClusterIdentifier"))
        }
        if let databaseName = databaseName {
            try container.encode(databaseName, forKey: Key("DatabaseName"))
        }
        if let partnerName = partnerName {
            try container.encode(partnerName, forKey: Key("PartnerName"))
        }
        try container.encode("AddPartner", forKey:Key("Action"))
        try container.encode("2012-12-01", forKey:Key("Version"))
    }
}