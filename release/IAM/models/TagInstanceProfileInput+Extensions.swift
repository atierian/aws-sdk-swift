// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct TagInstanceProfileInputHeadersMiddleware: Middleware {
    public let id: String = "TagInstanceProfileInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<TagInstanceProfileInput>,
                  next: H) -> Swift.Result<OperationOutput<TagInstanceProfileOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<TagInstanceProfileInput>
    public typealias MOutput = OperationOutput<TagInstanceProfileOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<TagInstanceProfileOutputError>
}

public struct TagInstanceProfileInputQueryItemMiddleware: Middleware {
    public let id: String = "TagInstanceProfileInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<TagInstanceProfileInput>,
                  next: H) -> Swift.Result<OperationOutput<TagInstanceProfileOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<TagInstanceProfileInput>
    public typealias MOutput = OperationOutput<TagInstanceProfileOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<TagInstanceProfileOutputError>
}

public struct TagInstanceProfileInputBodyMiddleware: Middleware {
    public let id: String = "TagInstanceProfileInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<TagInstanceProfileInput>,
                  next: H) -> Swift.Result<OperationOutput<TagInstanceProfileOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<TagInstanceProfileInput>
    public typealias MOutput = OperationOutput<TagInstanceProfileOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<TagInstanceProfileOutputError>
}

extension TagInstanceProfileInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let instanceProfileName = instanceProfileName {
            try container.encode(instanceProfileName, forKey: Key("InstanceProfileName"))
        }
        if let tags = tags {
            var tagsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Tags"))
            for (index0, tag0) in tags.enumerated() {
                try tagsContainer.encode(tag0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("TagInstanceProfile", forKey:Key("Action"))
        try container.encode("2010-05-08", forKey:Key("Version"))
    }
}