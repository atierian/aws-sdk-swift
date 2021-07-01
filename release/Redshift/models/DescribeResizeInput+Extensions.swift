// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeResizeInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeResizeInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeResizeInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeResizeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeResizeInput>
    public typealias MOutput = OperationOutput<DescribeResizeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeResizeOutputError>
}

public struct DescribeResizeInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeResizeInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeResizeInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeResizeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeResizeInput>
    public typealias MOutput = OperationOutput<DescribeResizeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeResizeOutputError>
}

public struct DescribeResizeInputBodyMiddleware: Middleware {
    public let id: String = "DescribeResizeInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeResizeInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeResizeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeResizeInput>
    public typealias MOutput = OperationOutput<DescribeResizeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeResizeOutputError>
}

extension DescribeResizeInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let clusterIdentifier = clusterIdentifier {
            try container.encode(clusterIdentifier, forKey: Key("ClusterIdentifier"))
        }
        try container.encode("DescribeResize", forKey:Key("Action"))
        try container.encode("2012-12-01", forKey:Key("Version"))
    }
}