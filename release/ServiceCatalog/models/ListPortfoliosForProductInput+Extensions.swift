// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListPortfoliosForProductInputHeadersMiddleware: Middleware {
    public let id: String = "ListPortfoliosForProductInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPortfoliosForProductInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPortfoliosForProductOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListPortfoliosForProductInput>
    public typealias MOutput = OperationOutput<ListPortfoliosForProductOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPortfoliosForProductOutputError>
}

public struct ListPortfoliosForProductInputQueryItemMiddleware: Middleware {
    public let id: String = "ListPortfoliosForProductInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPortfoliosForProductInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPortfoliosForProductOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListPortfoliosForProductInput>
    public typealias MOutput = OperationOutput<ListPortfoliosForProductOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPortfoliosForProductOutputError>
}

public struct ListPortfoliosForProductInputBodyMiddleware: Middleware {
    public let id: String = "ListPortfoliosForProductInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPortfoliosForProductInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPortfoliosForProductOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListPortfoliosForProductInput>
    public typealias MOutput = OperationOutput<ListPortfoliosForProductOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPortfoliosForProductOutputError>
}

extension ListPortfoliosForProductInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case acceptLanguage = "AcceptLanguage"
        case pageSize = "PageSize"
        case pageToken = "PageToken"
        case productId = "ProductId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let acceptLanguage = acceptLanguage {
            try encodeContainer.encode(acceptLanguage, forKey: .acceptLanguage)
        }
        if pageSize != 0 {
            try encodeContainer.encode(pageSize, forKey: .pageSize)
        }
        if let pageToken = pageToken {
            try encodeContainer.encode(pageToken, forKey: .pageToken)
        }
        if let productId = productId {
            try encodeContainer.encode(productId, forKey: .productId)
        }
    }
}