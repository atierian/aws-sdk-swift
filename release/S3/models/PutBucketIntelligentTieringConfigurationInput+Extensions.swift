// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutBucketIntelligentTieringConfigurationInputHeadersMiddleware: Middleware {
    public let id: String = "PutBucketIntelligentTieringConfigurationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutBucketIntelligentTieringConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutBucketIntelligentTieringConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutBucketIntelligentTieringConfigurationInput>
    public typealias MOutput = OperationOutput<PutBucketIntelligentTieringConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutBucketIntelligentTieringConfigurationOutputError>
}

public struct PutBucketIntelligentTieringConfigurationInputQueryItemMiddleware: Middleware {
    public let id: String = "PutBucketIntelligentTieringConfigurationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutBucketIntelligentTieringConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutBucketIntelligentTieringConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        input.builder.withQueryItem(URLQueryItem(name: "intelligent-tiering", value: nil))
        if let id = input.operationInput.id {
            let idQueryItem = URLQueryItem(name: "id".urlPercentEncoding(), value: String(id).urlPercentEncoding())
            input.builder.withQueryItem(idQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutBucketIntelligentTieringConfigurationInput>
    public typealias MOutput = OperationOutput<PutBucketIntelligentTieringConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutBucketIntelligentTieringConfigurationOutputError>
}

public struct PutBucketIntelligentTieringConfigurationInputBodyMiddleware: Middleware {
    public let id: String = "PutBucketIntelligentTieringConfigurationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutBucketIntelligentTieringConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutBucketIntelligentTieringConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let intelligentTieringConfiguration = input.operationInput.intelligentTieringConfiguration {
            do {
                let encoder = context.getEncoder()
                let data = try encoder.encode(intelligentTieringConfiguration)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            } catch let err {
                return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
            }
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutBucketIntelligentTieringConfigurationInput>
    public typealias MOutput = OperationOutput<PutBucketIntelligentTieringConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutBucketIntelligentTieringConfigurationOutputError>
}

extension PutBucketIntelligentTieringConfigurationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case intelligentTieringConfiguration = "IntelligentTieringConfiguration"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: Key("xmlns"))
        }
        if let intelligentTieringConfiguration = intelligentTieringConfiguration {
            try container.encode(intelligentTieringConfiguration, forKey: Key("IntelligentTieringConfiguration"))
        }
    }
}