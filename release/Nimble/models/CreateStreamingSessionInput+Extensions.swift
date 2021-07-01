// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateStreamingSessionInputHeadersMiddleware: Middleware {
    public let id: String = "CreateStreamingSessionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateStreamingSessionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateStreamingSessionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateStreamingSessionInput>
    public typealias MOutput = OperationOutput<CreateStreamingSessionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateStreamingSessionOutputError>
}

public struct CreateStreamingSessionInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateStreamingSessionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateStreamingSessionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateStreamingSessionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateStreamingSessionInput>
    public typealias MOutput = OperationOutput<CreateStreamingSessionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateStreamingSessionOutputError>
}

public struct CreateStreamingSessionInputBodyMiddleware: Middleware {
    public let id: String = "CreateStreamingSessionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateStreamingSessionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateStreamingSessionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateStreamingSessionInput>
    public typealias MOutput = OperationOutput<CreateStreamingSessionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateStreamingSessionOutputError>
}

extension CreateStreamingSessionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case ec2InstanceType = "ec2InstanceType"
        case launchProfileId = "launchProfileId"
        case streamingImageId = "streamingImageId"
        case tags = "tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let ec2InstanceType = ec2InstanceType {
            try encodeContainer.encode(ec2InstanceType.rawValue, forKey: .ec2InstanceType)
        }
        if let launchProfileId = launchProfileId {
            try encodeContainer.encode(launchProfileId, forKey: .launchProfileId)
        }
        if let streamingImageId = streamingImageId {
            try encodeContainer.encode(streamingImageId, forKey: .streamingImageId)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tags0) in tags {
                try tagsContainer.encode(tags0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}