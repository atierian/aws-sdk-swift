// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateDataSetInputHeadersMiddleware: Middleware {
    public let id: String = "CreateDataSetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDataSetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDataSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateDataSetInput>
    public typealias MOutput = OperationOutput<CreateDataSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDataSetOutputError>
}

public struct CreateDataSetInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateDataSetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDataSetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDataSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateDataSetInput>
    public typealias MOutput = OperationOutput<CreateDataSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDataSetOutputError>
}

public struct CreateDataSetInputBodyMiddleware: Middleware {
    public let id: String = "CreateDataSetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDataSetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDataSetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateDataSetInput>
    public typealias MOutput = OperationOutput<CreateDataSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDataSetOutputError>
}

extension CreateDataSetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case assetType = "AssetType"
        case description = "Description"
        case name = "Name"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let assetType = assetType {
            try encodeContainer.encode(assetType.rawValue, forKey: .assetType)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, mapof__string0) in tags {
                try tagsContainer.encode(mapof__string0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}