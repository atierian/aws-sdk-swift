// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateUploadUrlInputHeadersMiddleware: Middleware {
    public let id: String = "CreateUploadUrlInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateUploadUrlInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateUploadUrlOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateUploadUrlInput>
    public typealias MOutput = OperationOutput<CreateUploadUrlOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateUploadUrlOutputError>
}

public struct CreateUploadUrlInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateUploadUrlInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateUploadUrlInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateUploadUrlOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateUploadUrlInput>
    public typealias MOutput = OperationOutput<CreateUploadUrlOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateUploadUrlOutputError>
}

extension CreateUploadUrlInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}