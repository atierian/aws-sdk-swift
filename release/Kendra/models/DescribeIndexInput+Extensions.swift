// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeIndexInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeIndexInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeIndexInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeIndexOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeIndexInput>
    public typealias MOutput = OperationOutput<DescribeIndexOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeIndexOutputError>
}

public struct DescribeIndexInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeIndexInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeIndexInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeIndexOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeIndexInput>
    public typealias MOutput = OperationOutput<DescribeIndexOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeIndexOutputError>
}

public struct DescribeIndexInputBodyMiddleware: Middleware {
    public let id: String = "DescribeIndexInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeIndexInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeIndexOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeIndexInput>
    public typealias MOutput = OperationOutput<DescribeIndexOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeIndexOutputError>
}

extension DescribeIndexInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case id = "Id"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
    }
}