// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetObjectRetentionInputHeadersMiddleware: Middleware {
    public let id: String = "GetObjectRetentionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetObjectRetentionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetObjectRetentionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let expectedBucketOwner = input.operationInput.expectedBucketOwner {
            input.builder.withHeader(name: "x-amz-expected-bucket-owner", value: String(expectedBucketOwner))
        }
        if let requestPayer = input.operationInput.requestPayer {
            input.builder.withHeader(name: "x-amz-request-payer", value: String(requestPayer.rawValue))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetObjectRetentionInput>
    public typealias MOutput = OperationOutput<GetObjectRetentionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetObjectRetentionOutputError>
}

public struct GetObjectRetentionInputQueryItemMiddleware: Middleware {
    public let id: String = "GetObjectRetentionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetObjectRetentionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetObjectRetentionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        input.builder.withQueryItem(URLQueryItem(name: "retention", value: nil))
        if let versionId = input.operationInput.versionId {
            let versionIdQueryItem = URLQueryItem(name: "versionId".urlPercentEncoding(), value: String(versionId).urlPercentEncoding())
            input.builder.withQueryItem(versionIdQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetObjectRetentionInput>
    public typealias MOutput = OperationOutput<GetObjectRetentionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetObjectRetentionOutputError>
}

extension GetObjectRetentionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}