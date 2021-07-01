// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteAnalyzerInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteAnalyzerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAnalyzerInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAnalyzerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAnalyzerInput>
    public typealias MOutput = OperationOutput<DeleteAnalyzerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAnalyzerOutputError>
}

public struct DeleteAnalyzerInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteAnalyzerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAnalyzerInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAnalyzerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let clientToken = input.operationInput.clientToken {
            let clientTokenQueryItem = URLQueryItem(name: "clientToken".urlPercentEncoding(), value: String(clientToken).urlPercentEncoding())
            input.builder.withQueryItem(clientTokenQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAnalyzerInput>
    public typealias MOutput = OperationOutput<DeleteAnalyzerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAnalyzerOutputError>
}

extension DeleteAnalyzerInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}