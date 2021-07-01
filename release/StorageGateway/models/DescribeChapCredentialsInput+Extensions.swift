// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeChapCredentialsInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeChapCredentialsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeChapCredentialsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeChapCredentialsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeChapCredentialsInput>
    public typealias MOutput = OperationOutput<DescribeChapCredentialsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeChapCredentialsOutputError>
}

public struct DescribeChapCredentialsInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeChapCredentialsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeChapCredentialsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeChapCredentialsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeChapCredentialsInput>
    public typealias MOutput = OperationOutput<DescribeChapCredentialsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeChapCredentialsOutputError>
}

public struct DescribeChapCredentialsInputBodyMiddleware: Middleware {
    public let id: String = "DescribeChapCredentialsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeChapCredentialsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeChapCredentialsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeChapCredentialsInput>
    public typealias MOutput = OperationOutput<DescribeChapCredentialsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeChapCredentialsOutputError>
}

extension DescribeChapCredentialsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case targetARN = "TargetARN"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let targetARN = targetARN {
            try encodeContainer.encode(targetARN, forKey: .targetARN)
        }
    }
}