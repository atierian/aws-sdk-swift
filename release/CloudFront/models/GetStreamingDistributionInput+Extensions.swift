// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetStreamingDistributionInputHeadersMiddleware: Middleware {
    public let id: String = "GetStreamingDistributionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetStreamingDistributionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetStreamingDistributionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetStreamingDistributionInput>
    public typealias MOutput = OperationOutput<GetStreamingDistributionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetStreamingDistributionOutputError>
}

public struct GetStreamingDistributionInputQueryItemMiddleware: Middleware {
    public let id: String = "GetStreamingDistributionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetStreamingDistributionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetStreamingDistributionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetStreamingDistributionInput>
    public typealias MOutput = OperationOutput<GetStreamingDistributionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetStreamingDistributionOutputError>
}

extension GetStreamingDistributionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}