// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeUserInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeUserInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeUserInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeUserOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeUserInput>
    public typealias MOutput = OperationOutput<DescribeUserOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeUserOutputError>
}

public struct DescribeUserInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeUserInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeUserInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeUserOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeUserInput>
    public typealias MOutput = OperationOutput<DescribeUserOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeUserOutputError>
}

extension DescribeUserInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}