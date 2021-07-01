// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeStackResourcesInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeStackResourcesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeStackResourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeStackResourcesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeStackResourcesInput>
    public typealias MOutput = OperationOutput<DescribeStackResourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeStackResourcesOutputError>
}

public struct DescribeStackResourcesInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeStackResourcesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeStackResourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeStackResourcesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeStackResourcesInput>
    public typealias MOutput = OperationOutput<DescribeStackResourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeStackResourcesOutputError>
}

public struct DescribeStackResourcesInputBodyMiddleware: Middleware {
    public let id: String = "DescribeStackResourcesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeStackResourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeStackResourcesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeStackResourcesInput>
    public typealias MOutput = OperationOutput<DescribeStackResourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeStackResourcesOutputError>
}

extension DescribeStackResourcesInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let logicalResourceId = logicalResourceId {
            try container.encode(logicalResourceId, forKey: Key("LogicalResourceId"))
        }
        if let physicalResourceId = physicalResourceId {
            try container.encode(physicalResourceId, forKey: Key("PhysicalResourceId"))
        }
        if let stackName = stackName {
            try container.encode(stackName, forKey: Key("StackName"))
        }
        try container.encode("DescribeStackResources", forKey:Key("Action"))
        try container.encode("2010-05-15", forKey:Key("Version"))
    }
}