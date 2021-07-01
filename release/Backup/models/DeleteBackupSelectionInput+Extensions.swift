// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteBackupSelectionInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteBackupSelectionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteBackupSelectionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteBackupSelectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteBackupSelectionInput>
    public typealias MOutput = OperationOutput<DeleteBackupSelectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteBackupSelectionOutputError>
}

public struct DeleteBackupSelectionInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteBackupSelectionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteBackupSelectionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteBackupSelectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteBackupSelectionInput>
    public typealias MOutput = OperationOutput<DeleteBackupSelectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteBackupSelectionOutputError>
}

extension DeleteBackupSelectionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}