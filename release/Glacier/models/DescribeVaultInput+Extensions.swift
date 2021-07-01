// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeVaultInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeVaultInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeVaultInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeVaultOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeVaultInput>
    public typealias MOutput = OperationOutput<DescribeVaultOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeVaultOutputError>
}

public struct DescribeVaultInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeVaultInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeVaultInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeVaultOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeVaultInput>
    public typealias MOutput = OperationOutput<DescribeVaultOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeVaultOutputError>
}

extension DescribeVaultInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}