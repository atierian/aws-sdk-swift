// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteTagsInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteTagsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTagsInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTagsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteTagsInput>
    public typealias MOutput = OperationOutput<DeleteTagsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTagsOutputError>
}

public struct DeleteTagsInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteTagsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTagsInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTagsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteTagsInput>
    public typealias MOutput = OperationOutput<DeleteTagsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTagsOutputError>
}

public struct DeleteTagsInputBodyMiddleware: Middleware {
    public let id: String = "DeleteTagsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTagsInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTagsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteTagsInput>
    public typealias MOutput = OperationOutput<DeleteTagsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTagsOutputError>
}

extension DeleteTagsInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let tags = tags {
            var tagsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Tags"))
            for (index0, tag0) in tags.enumerated() {
                try tagsContainer.encode(tag0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("DeleteTags", forKey:Key("Action"))
        try container.encode("2011-01-01", forKey:Key("Version"))
    }
}