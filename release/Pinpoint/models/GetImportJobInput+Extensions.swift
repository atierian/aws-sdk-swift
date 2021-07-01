// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetImportJobInputHeadersMiddleware: Middleware {
    public let id: String = "GetImportJobInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetImportJobInput>,
                  next: H) -> Swift.Result<OperationOutput<GetImportJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetImportJobInput>
    public typealias MOutput = OperationOutput<GetImportJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetImportJobOutputError>
}

public struct GetImportJobInputQueryItemMiddleware: Middleware {
    public let id: String = "GetImportJobInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetImportJobInput>,
                  next: H) -> Swift.Result<OperationOutput<GetImportJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetImportJobInput>
    public typealias MOutput = OperationOutput<GetImportJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetImportJobOutputError>
}

extension GetImportJobInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}