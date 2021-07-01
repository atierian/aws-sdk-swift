// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeIdFormatInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeIdFormatInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeIdFormatInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeIdFormatOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeIdFormatInput>
    public typealias MOutput = OperationOutput<DescribeIdFormatOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeIdFormatOutputError>
}

public struct DescribeIdFormatInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeIdFormatInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeIdFormatInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeIdFormatOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeIdFormatInput>
    public typealias MOutput = OperationOutput<DescribeIdFormatOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeIdFormatOutputError>
}

public struct DescribeIdFormatInputBodyMiddleware: Middleware {
    public let id: String = "DescribeIdFormatInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeIdFormatInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeIdFormatOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeIdFormatInput>
    public typealias MOutput = OperationOutput<DescribeIdFormatOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeIdFormatOutputError>
}

extension DescribeIdFormatInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let resource = resource {
            try container.encode(resource, forKey: Key("Resource"))
        }
        try container.encode("DescribeIdFormat", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}