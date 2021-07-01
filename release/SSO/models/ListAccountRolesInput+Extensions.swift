// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListAccountRolesInputHeadersMiddleware: Middleware {
    public let id: String = "ListAccountRolesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListAccountRolesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListAccountRolesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let accessToken = input.operationInput.accessToken {
            input.builder.withHeader(name: "x-amz-sso_bearer_token", value: String(accessToken))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListAccountRolesInput>
    public typealias MOutput = OperationOutput<ListAccountRolesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListAccountRolesOutputError>
}

public struct ListAccountRolesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListAccountRolesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListAccountRolesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListAccountRolesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let accountId = input.operationInput.accountId {
            let accountIdQueryItem = URLQueryItem(name: "account_id".urlPercentEncoding(), value: String(accountId).urlPercentEncoding())
            input.builder.withQueryItem(accountIdQueryItem)
        }
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "next_token".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        if let maxResults = input.operationInput.maxResults {
            let maxResultsQueryItem = URLQueryItem(name: "max_result".urlPercentEncoding(), value: String(maxResults).urlPercentEncoding())
            input.builder.withQueryItem(maxResultsQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListAccountRolesInput>
    public typealias MOutput = OperationOutput<ListAccountRolesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListAccountRolesOutputError>
}

extension ListAccountRolesInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}