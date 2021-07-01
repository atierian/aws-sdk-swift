// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateDirectoryInputHeadersMiddleware: Middleware {
    public let id: String = "CreateDirectoryInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDirectoryInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDirectoryOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateDirectoryInput>
    public typealias MOutput = OperationOutput<CreateDirectoryOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDirectoryOutputError>
}

public struct CreateDirectoryInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateDirectoryInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDirectoryInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDirectoryOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateDirectoryInput>
    public typealias MOutput = OperationOutput<CreateDirectoryOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDirectoryOutputError>
}

public struct CreateDirectoryInputBodyMiddleware: Middleware {
    public let id: String = "CreateDirectoryInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDirectoryInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDirectoryOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateDirectoryInput>
    public typealias MOutput = OperationOutput<CreateDirectoryOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDirectoryOutputError>
}

extension CreateDirectoryInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case name = "Name"
        case password = "Password"
        case shortName = "ShortName"
        case size = "Size"
        case tags = "Tags"
        case vpcSettings = "VpcSettings"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let password = password {
            try encodeContainer.encode(password, forKey: .password)
        }
        if let shortName = shortName {
            try encodeContainer.encode(shortName, forKey: .shortName)
        }
        if let size = size {
            try encodeContainer.encode(size.rawValue, forKey: .size)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for tags0 in tags {
                try tagsContainer.encode(tags0)
            }
        }
        if let vpcSettings = vpcSettings {
            try encodeContainer.encode(vpcSettings, forKey: .vpcSettings)
        }
    }
}