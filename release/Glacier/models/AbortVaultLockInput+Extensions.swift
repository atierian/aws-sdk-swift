// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AbortVaultLockInputHeadersMiddleware: Middleware {
    public let id: String = "AbortVaultLockInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AbortVaultLockInput>,
                  next: H) -> Swift.Result<OperationOutput<AbortVaultLockOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AbortVaultLockInput>
    public typealias MOutput = OperationOutput<AbortVaultLockOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AbortVaultLockOutputError>
}

public struct AbortVaultLockInputQueryItemMiddleware: Middleware {
    public let id: String = "AbortVaultLockInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AbortVaultLockInput>,
                  next: H) -> Swift.Result<OperationOutput<AbortVaultLockOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AbortVaultLockInput>
    public typealias MOutput = OperationOutput<AbortVaultLockOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AbortVaultLockOutputError>
}

extension AbortVaultLockInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}