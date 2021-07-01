// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RemoveSchemaVersionMetadataInputHeadersMiddleware: Middleware {
    public let id: String = "RemoveSchemaVersionMetadataInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RemoveSchemaVersionMetadataInput>,
                  next: H) -> Swift.Result<OperationOutput<RemoveSchemaVersionMetadataOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RemoveSchemaVersionMetadataInput>
    public typealias MOutput = OperationOutput<RemoveSchemaVersionMetadataOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RemoveSchemaVersionMetadataOutputError>
}

public struct RemoveSchemaVersionMetadataInputQueryItemMiddleware: Middleware {
    public let id: String = "RemoveSchemaVersionMetadataInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RemoveSchemaVersionMetadataInput>,
                  next: H) -> Swift.Result<OperationOutput<RemoveSchemaVersionMetadataOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RemoveSchemaVersionMetadataInput>
    public typealias MOutput = OperationOutput<RemoveSchemaVersionMetadataOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RemoveSchemaVersionMetadataOutputError>
}

public struct RemoveSchemaVersionMetadataInputBodyMiddleware: Middleware {
    public let id: String = "RemoveSchemaVersionMetadataInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RemoveSchemaVersionMetadataInput>,
                  next: H) -> Swift.Result<OperationOutput<RemoveSchemaVersionMetadataOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RemoveSchemaVersionMetadataInput>
    public typealias MOutput = OperationOutput<RemoveSchemaVersionMetadataOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RemoveSchemaVersionMetadataOutputError>
}

extension RemoveSchemaVersionMetadataInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case metadataKeyValue = "MetadataKeyValue"
        case schemaId = "SchemaId"
        case schemaVersionId = "SchemaVersionId"
        case schemaVersionNumber = "SchemaVersionNumber"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let metadataKeyValue = metadataKeyValue {
            try encodeContainer.encode(metadataKeyValue, forKey: .metadataKeyValue)
        }
        if let schemaId = schemaId {
            try encodeContainer.encode(schemaId, forKey: .schemaId)
        }
        if let schemaVersionId = schemaVersionId {
            try encodeContainer.encode(schemaVersionId, forKey: .schemaVersionId)
        }
        if let schemaVersionNumber = schemaVersionNumber {
            try encodeContainer.encode(schemaVersionNumber, forKey: .schemaVersionNumber)
        }
    }
}