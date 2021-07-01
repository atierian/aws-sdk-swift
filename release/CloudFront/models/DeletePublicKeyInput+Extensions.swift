// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeletePublicKeyInputHeadersMiddleware: Middleware {
    public let id: String = "DeletePublicKeyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeletePublicKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<DeletePublicKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let ifMatch = input.operationInput.ifMatch {
            input.builder.withHeader(name: "If-Match", value: String(ifMatch))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeletePublicKeyInput>
    public typealias MOutput = OperationOutput<DeletePublicKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeletePublicKeyOutputError>
}

public struct DeletePublicKeyInputQueryItemMiddleware: Middleware {
    public let id: String = "DeletePublicKeyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeletePublicKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<DeletePublicKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeletePublicKeyInput>
    public typealias MOutput = OperationOutput<DeletePublicKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeletePublicKeyOutputError>
}

extension DeletePublicKeyInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}