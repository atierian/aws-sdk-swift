// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeVirtualInterfacesInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeVirtualInterfacesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeVirtualInterfacesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeVirtualInterfacesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeVirtualInterfacesInput>
    public typealias MOutput = OperationOutput<DescribeVirtualInterfacesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeVirtualInterfacesOutputError>
}

public struct DescribeVirtualInterfacesInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeVirtualInterfacesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeVirtualInterfacesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeVirtualInterfacesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeVirtualInterfacesInput>
    public typealias MOutput = OperationOutput<DescribeVirtualInterfacesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeVirtualInterfacesOutputError>
}

public struct DescribeVirtualInterfacesInputBodyMiddleware: Middleware {
    public let id: String = "DescribeVirtualInterfacesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeVirtualInterfacesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeVirtualInterfacesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeVirtualInterfacesInput>
    public typealias MOutput = OperationOutput<DescribeVirtualInterfacesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeVirtualInterfacesOutputError>
}

extension DescribeVirtualInterfacesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case connectionId
        case virtualInterfaceId
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let connectionId = connectionId {
            try encodeContainer.encode(connectionId, forKey: .connectionId)
        }
        if let virtualInterfaceId = virtualInterfaceId {
            try encodeContainer.encode(virtualInterfaceId, forKey: .virtualInterfaceId)
        }
    }
}