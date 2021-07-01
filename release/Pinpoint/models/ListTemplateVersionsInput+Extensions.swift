// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListTemplateVersionsInputHeadersMiddleware: Middleware {
    public let id: String = "ListTemplateVersionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListTemplateVersionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListTemplateVersionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListTemplateVersionsInput>
    public typealias MOutput = OperationOutput<ListTemplateVersionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListTemplateVersionsOutputError>
}

public struct ListTemplateVersionsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListTemplateVersionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListTemplateVersionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListTemplateVersionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "next-token".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        if let pageSize = input.operationInput.pageSize {
            let pageSizeQueryItem = URLQueryItem(name: "page-size".urlPercentEncoding(), value: String(pageSize).urlPercentEncoding())
            input.builder.withQueryItem(pageSizeQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListTemplateVersionsInput>
    public typealias MOutput = OperationOutput<ListTemplateVersionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListTemplateVersionsOutputError>
}

extension ListTemplateVersionsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}