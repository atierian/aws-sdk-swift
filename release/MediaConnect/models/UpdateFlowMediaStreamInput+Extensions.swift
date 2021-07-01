// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateFlowMediaStreamInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateFlowMediaStreamInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFlowMediaStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFlowMediaStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateFlowMediaStreamInput>
    public typealias MOutput = OperationOutput<UpdateFlowMediaStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFlowMediaStreamOutputError>
}

public struct UpdateFlowMediaStreamInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateFlowMediaStreamInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFlowMediaStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFlowMediaStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateFlowMediaStreamInput>
    public typealias MOutput = OperationOutput<UpdateFlowMediaStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFlowMediaStreamOutputError>
}

public struct UpdateFlowMediaStreamInputBodyMiddleware: Middleware {
    public let id: String = "UpdateFlowMediaStreamInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFlowMediaStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFlowMediaStreamOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateFlowMediaStreamInput>
    public typealias MOutput = OperationOutput<UpdateFlowMediaStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFlowMediaStreamOutputError>
}

extension UpdateFlowMediaStreamInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case attributes = "attributes"
        case clockRate = "clockRate"
        case description = "description"
        case mediaStreamType = "mediaStreamType"
        case videoFormat = "videoFormat"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let attributes = attributes {
            try encodeContainer.encode(attributes, forKey: .attributes)
        }
        if clockRate != 0 {
            try encodeContainer.encode(clockRate, forKey: .clockRate)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let mediaStreamType = mediaStreamType {
            try encodeContainer.encode(mediaStreamType.rawValue, forKey: .mediaStreamType)
        }
        if let videoFormat = videoFormat {
            try encodeContainer.encode(videoFormat, forKey: .videoFormat)
        }
    }
}