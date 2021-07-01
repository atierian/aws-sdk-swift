// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeElasticsearchDomainInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeElasticsearchDomainInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeElasticsearchDomainInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeElasticsearchDomainOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeElasticsearchDomainInput>
    public typealias MOutput = OperationOutput<DescribeElasticsearchDomainOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeElasticsearchDomainOutputError>
}

public struct DescribeElasticsearchDomainInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeElasticsearchDomainInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeElasticsearchDomainInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeElasticsearchDomainOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeElasticsearchDomainInput>
    public typealias MOutput = OperationOutput<DescribeElasticsearchDomainOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeElasticsearchDomainOutputError>
}

extension DescribeElasticsearchDomainInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}