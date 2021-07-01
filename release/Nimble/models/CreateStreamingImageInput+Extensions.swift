// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateStreamingImageInputHeadersMiddleware: Middleware {
    public let id: String = "CreateStreamingImageInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateStreamingImageInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateStreamingImageOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let clientToken = input.operationInput.clientToken {
            input.builder.withHeader(name: "X-Amz-Client-Token", value: String(clientToken))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateStreamingImageInput>
    public typealias MOutput = OperationOutput<CreateStreamingImageOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateStreamingImageOutputError>
}

public struct CreateStreamingImageInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateStreamingImageInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateStreamingImageInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateStreamingImageOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateStreamingImageInput>
    public typealias MOutput = OperationOutput<CreateStreamingImageOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateStreamingImageOutputError>
}

public struct CreateStreamingImageInputBodyMiddleware: Middleware {
    public let id: String = "CreateStreamingImageInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateStreamingImageInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateStreamingImageOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateStreamingImageInput>
    public typealias MOutput = OperationOutput<CreateStreamingImageOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateStreamingImageOutputError>
}

extension CreateStreamingImageInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case description = "description"
        case ec2ImageId = "ec2ImageId"
        case name = "name"
        case tags = "tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let ec2ImageId = ec2ImageId {
            try encodeContainer.encode(ec2ImageId, forKey: .ec2ImageId)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tags0) in tags {
                try tagsContainer.encode(tags0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}