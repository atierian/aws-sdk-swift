// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateWorkGroupInputHeadersMiddleware: Middleware {
    public let id: String = "CreateWorkGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateWorkGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateWorkGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateWorkGroupInput>
    public typealias MOutput = OperationOutput<CreateWorkGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateWorkGroupOutputError>
}

public struct CreateWorkGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateWorkGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateWorkGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateWorkGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateWorkGroupInput>
    public typealias MOutput = OperationOutput<CreateWorkGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateWorkGroupOutputError>
}

public struct CreateWorkGroupInputBodyMiddleware: Middleware {
    public let id: String = "CreateWorkGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateWorkGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateWorkGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateWorkGroupInput>
    public typealias MOutput = OperationOutput<CreateWorkGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateWorkGroupOutputError>
}

extension CreateWorkGroupInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case configuration = "Configuration"
        case description = "Description"
        case name = "Name"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let configuration = configuration {
            try encodeContainer.encode(configuration, forKey: .configuration)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
    }
}