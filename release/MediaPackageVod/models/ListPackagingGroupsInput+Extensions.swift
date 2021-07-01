// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListPackagingGroupsInputHeadersMiddleware: Middleware {
    public let id: String = "ListPackagingGroupsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPackagingGroupsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPackagingGroupsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListPackagingGroupsInput>
    public typealias MOutput = OperationOutput<ListPackagingGroupsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPackagingGroupsOutputError>
}

public struct ListPackagingGroupsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListPackagingGroupsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPackagingGroupsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPackagingGroupsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListPackagingGroupsInput>
    public typealias MOutput = OperationOutput<ListPackagingGroupsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPackagingGroupsOutputError>
}

extension ListPackagingGroupsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}