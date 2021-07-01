// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteBucketLifecycleConfigurationInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteBucketLifecycleConfigurationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteBucketLifecycleConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteBucketLifecycleConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let accountId = input.operationInput.accountId {
            input.builder.withHeader(name: "x-amz-account-id", value: String(accountId))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteBucketLifecycleConfigurationInput>
    public typealias MOutput = OperationOutput<DeleteBucketLifecycleConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteBucketLifecycleConfigurationOutputError>
}

public struct DeleteBucketLifecycleConfigurationInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteBucketLifecycleConfigurationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteBucketLifecycleConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteBucketLifecycleConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteBucketLifecycleConfigurationInput>
    public typealias MOutput = OperationOutput<DeleteBucketLifecycleConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteBucketLifecycleConfigurationOutputError>
}

extension DeleteBucketLifecycleConfigurationInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}