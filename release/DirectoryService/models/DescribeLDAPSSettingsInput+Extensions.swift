// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeLDAPSSettingsInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeLDAPSSettingsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLDAPSSettingsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLDAPSSettingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeLDAPSSettingsInput>
    public typealias MOutput = OperationOutput<DescribeLDAPSSettingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLDAPSSettingsOutputError>
}

public struct DescribeLDAPSSettingsInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeLDAPSSettingsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLDAPSSettingsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLDAPSSettingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeLDAPSSettingsInput>
    public typealias MOutput = OperationOutput<DescribeLDAPSSettingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLDAPSSettingsOutputError>
}

public struct DescribeLDAPSSettingsInputBodyMiddleware: Middleware {
    public let id: String = "DescribeLDAPSSettingsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLDAPSSettingsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLDAPSSettingsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeLDAPSSettingsInput>
    public typealias MOutput = OperationOutput<DescribeLDAPSSettingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLDAPSSettingsOutputError>
}

extension DescribeLDAPSSettingsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case directoryId = "DirectoryId"
        case limit = "Limit"
        case nextToken = "NextToken"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let directoryId = directoryId {
            try encodeContainer.encode(directoryId, forKey: .directoryId)
        }
        if let limit = limit {
            try encodeContainer.encode(limit, forKey: .limit)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }
}