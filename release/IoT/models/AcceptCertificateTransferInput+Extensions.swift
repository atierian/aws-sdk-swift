// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AcceptCertificateTransferInputHeadersMiddleware: Middleware {
    public let id: String = "AcceptCertificateTransferInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcceptCertificateTransferInput>,
                  next: H) -> Swift.Result<OperationOutput<AcceptCertificateTransferOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AcceptCertificateTransferInput>
    public typealias MOutput = OperationOutput<AcceptCertificateTransferOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcceptCertificateTransferOutputError>
}

public struct AcceptCertificateTransferInputQueryItemMiddleware: Middleware {
    public let id: String = "AcceptCertificateTransferInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcceptCertificateTransferInput>,
                  next: H) -> Swift.Result<OperationOutput<AcceptCertificateTransferOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        let setAsActiveQueryItem = URLQueryItem(name: "setAsActive".urlPercentEncoding(), value: String(input.operationInput.setAsActive).urlPercentEncoding())
        input.builder.withQueryItem(setAsActiveQueryItem)
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AcceptCertificateTransferInput>
    public typealias MOutput = OperationOutput<AcceptCertificateTransferOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcceptCertificateTransferOutputError>
}

extension AcceptCertificateTransferInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}