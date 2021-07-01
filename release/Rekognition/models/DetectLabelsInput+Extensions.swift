// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DetectLabelsInputHeadersMiddleware: Middleware {
    public let id: String = "DetectLabelsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DetectLabelsInput>,
                  next: H) -> Swift.Result<OperationOutput<DetectLabelsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DetectLabelsInput>
    public typealias MOutput = OperationOutput<DetectLabelsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DetectLabelsOutputError>
}

public struct DetectLabelsInputQueryItemMiddleware: Middleware {
    public let id: String = "DetectLabelsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DetectLabelsInput>,
                  next: H) -> Swift.Result<OperationOutput<DetectLabelsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DetectLabelsInput>
    public typealias MOutput = OperationOutput<DetectLabelsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DetectLabelsOutputError>
}

public struct DetectLabelsInputBodyMiddleware: Middleware {
    public let id: String = "DetectLabelsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DetectLabelsInput>,
                  next: H) -> Swift.Result<OperationOutput<DetectLabelsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DetectLabelsInput>
    public typealias MOutput = OperationOutput<DetectLabelsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DetectLabelsOutputError>
}

extension DetectLabelsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case image = "Image"
        case maxLabels = "MaxLabels"
        case minConfidence = "MinConfidence"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let image = image {
            try encodeContainer.encode(image, forKey: .image)
        }
        if let maxLabels = maxLabels {
            try encodeContainer.encode(maxLabels, forKey: .maxLabels)
        }
        if let minConfidence = minConfidence {
            try encodeContainer.encode(minConfidence, forKey: .minConfidence)
        }
    }
}