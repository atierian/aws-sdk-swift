// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeInputSecurityGroupInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeInputSecurityGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeInputSecurityGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeInputSecurityGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeInputSecurityGroupInput>
    public typealias MOutput = OperationOutput<DescribeInputSecurityGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeInputSecurityGroupOutputError>
}

public struct DescribeInputSecurityGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeInputSecurityGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeInputSecurityGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeInputSecurityGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeInputSecurityGroupInput>
    public typealias MOutput = OperationOutput<DescribeInputSecurityGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeInputSecurityGroupOutputError>
}

extension DescribeInputSecurityGroupInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}