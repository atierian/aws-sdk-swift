// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetBlacklistReportsInputHeadersMiddleware: Middleware {
    public let id: String = "GetBlacklistReportsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetBlacklistReportsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetBlacklistReportsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetBlacklistReportsInput>
    public typealias MOutput = OperationOutput<GetBlacklistReportsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetBlacklistReportsOutputError>
}

public struct GetBlacklistReportsInputQueryItemMiddleware: Middleware {
    public let id: String = "GetBlacklistReportsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetBlacklistReportsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetBlacklistReportsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let blacklistItemNames = input.operationInput.blacklistItemNames {
            blacklistItemNames.forEach { queryItemValue in
                let queryItem = URLQueryItem(name: "BlacklistItemNames".urlPercentEncoding(), value: String(queryItemValue).urlPercentEncoding())
                input.builder.withQueryItem(queryItem)
            }
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetBlacklistReportsInput>
    public typealias MOutput = OperationOutput<GetBlacklistReportsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetBlacklistReportsOutputError>
}

extension GetBlacklistReportsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}