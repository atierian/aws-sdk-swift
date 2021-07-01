// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListOfferingsInputHeadersMiddleware: Middleware {
    public let id: String = "ListOfferingsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListOfferingsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListOfferingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListOfferingsInput>
    public typealias MOutput = OperationOutput<ListOfferingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListOfferingsOutputError>
}

public struct ListOfferingsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListOfferingsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListOfferingsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListOfferingsOutputResponse>, MError>
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
        let maxResultsQueryItem = URLQueryItem(name: "maxResults".urlPercentEncoding(), value: String(input.operationInput.maxResults).urlPercentEncoding())
        input.builder.withQueryItem(maxResultsQueryItem)
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListOfferingsInput>
    public typealias MOutput = OperationOutput<ListOfferingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListOfferingsOutputError>
}

extension ListOfferingsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}