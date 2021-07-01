// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteVaultInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteVaultInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteVaultInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteVaultOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteVaultInput>
    public typealias MOutput = OperationOutput<DeleteVaultOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteVaultOutputError>
}

public struct DeleteVaultInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteVaultInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteVaultInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteVaultOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteVaultInput>
    public typealias MOutput = OperationOutput<DeleteVaultOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteVaultOutputError>
}

extension DeleteVaultInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}