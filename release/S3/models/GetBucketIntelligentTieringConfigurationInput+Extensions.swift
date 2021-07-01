// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetBucketIntelligentTieringConfigurationInputHeadersMiddleware: Middleware {
    public let id: String = "GetBucketIntelligentTieringConfigurationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetBucketIntelligentTieringConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<GetBucketIntelligentTieringConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetBucketIntelligentTieringConfigurationInput>
    public typealias MOutput = OperationOutput<GetBucketIntelligentTieringConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetBucketIntelligentTieringConfigurationOutputError>
}

public struct GetBucketIntelligentTieringConfigurationInputQueryItemMiddleware: Middleware {
    public let id: String = "GetBucketIntelligentTieringConfigurationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetBucketIntelligentTieringConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<GetBucketIntelligentTieringConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        input.builder.withQueryItem(URLQueryItem(name: "intelligent-tiering", value: nil))
        input.builder.withQueryItem(URLQueryItem(name: "x-id", value: "GetBucketIntelligentTieringConfiguration"))
        if let id = input.operationInput.id {
            let idQueryItem = URLQueryItem(name: "id".urlPercentEncoding(), value: String(id).urlPercentEncoding())
            input.builder.withQueryItem(idQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetBucketIntelligentTieringConfigurationInput>
    public typealias MOutput = OperationOutput<GetBucketIntelligentTieringConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetBucketIntelligentTieringConfigurationOutputError>
}

extension GetBucketIntelligentTieringConfigurationInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}