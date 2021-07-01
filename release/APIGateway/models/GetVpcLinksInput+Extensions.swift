// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetVpcLinksInputHeadersMiddleware: Middleware {
    public let id: String = "GetVpcLinksInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetVpcLinksInput>,
                  next: H) -> Swift.Result<OperationOutput<GetVpcLinksOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetVpcLinksInput>
    public typealias MOutput = OperationOutput<GetVpcLinksOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetVpcLinksOutputError>
}

public struct GetVpcLinksInputQueryItemMiddleware: Middleware {
    public let id: String = "GetVpcLinksInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetVpcLinksInput>,
                  next: H) -> Swift.Result<OperationOutput<GetVpcLinksOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let limit = input.operationInput.limit {
            let limitQueryItem = URLQueryItem(name: "limit".urlPercentEncoding(), value: String(limit).urlPercentEncoding())
            input.builder.withQueryItem(limitQueryItem)
        }
        if let position = input.operationInput.position {
            let positionQueryItem = URLQueryItem(name: "position".urlPercentEncoding(), value: String(position).urlPercentEncoding())
            input.builder.withQueryItem(positionQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetVpcLinksInput>
    public typealias MOutput = OperationOutput<GetVpcLinksOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetVpcLinksOutputError>
}

extension GetVpcLinksInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}