// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeChannelMembershipInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeChannelMembershipInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeChannelMembershipInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeChannelMembershipOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let chimeBearer = input.operationInput.chimeBearer {
            input.builder.withHeader(name: "x-amz-chime-bearer", value: String(chimeBearer))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeChannelMembershipInput>
    public typealias MOutput = OperationOutput<DescribeChannelMembershipOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeChannelMembershipOutputError>
}

public struct DescribeChannelMembershipInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeChannelMembershipInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeChannelMembershipInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeChannelMembershipOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeChannelMembershipInput>
    public typealias MOutput = OperationOutput<DescribeChannelMembershipOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeChannelMembershipOutputError>
}

extension DescribeChannelMembershipInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}