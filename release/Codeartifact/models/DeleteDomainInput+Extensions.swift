// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteDomainInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteDomainInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteDomainInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteDomainOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteDomainInput>
    public typealias MOutput = OperationOutput<DeleteDomainOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteDomainOutputError>
}

public struct DeleteDomainInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteDomainInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteDomainInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteDomainOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let domain = input.operationInput.domain {
            let domainQueryItem = URLQueryItem(name: "domain".urlPercentEncoding(), value: String(domain).urlPercentEncoding())
            input.builder.withQueryItem(domainQueryItem)
        }
        if let domainOwner = input.operationInput.domainOwner {
            let domainOwnerQueryItem = URLQueryItem(name: "domain-owner".urlPercentEncoding(), value: String(domainOwner).urlPercentEncoding())
            input.builder.withQueryItem(domainOwnerQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteDomainInput>
    public typealias MOutput = OperationOutput<DeleteDomainOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteDomainOutputError>
}

extension DeleteDomainInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}