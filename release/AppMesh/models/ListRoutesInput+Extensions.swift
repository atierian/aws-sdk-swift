// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListRoutesInputHeadersMiddleware: Middleware {
    public let id: String = "ListRoutesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListRoutesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListRoutesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListRoutesInput>
    public typealias MOutput = OperationOutput<ListRoutesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListRoutesOutputError>
}

public struct ListRoutesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListRoutesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListRoutesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListRoutesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "nextToken".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        if let limit = input.operationInput.limit {
            let limitQueryItem = URLQueryItem(name: "limit".urlPercentEncoding(), value: String(limit).urlPercentEncoding())
            input.builder.withQueryItem(limitQueryItem)
        }
        if let meshOwner = input.operationInput.meshOwner {
            let meshOwnerQueryItem = URLQueryItem(name: "meshOwner".urlPercentEncoding(), value: String(meshOwner).urlPercentEncoding())
            input.builder.withQueryItem(meshOwnerQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListRoutesInput>
    public typealias MOutput = OperationOutput<ListRoutesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListRoutesOutputError>
}

extension ListRoutesInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}