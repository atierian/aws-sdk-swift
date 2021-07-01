// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeLocationNfsInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeLocationNfsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLocationNfsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLocationNfsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeLocationNfsInput>
    public typealias MOutput = OperationOutput<DescribeLocationNfsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLocationNfsOutputError>
}

public struct DescribeLocationNfsInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeLocationNfsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLocationNfsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLocationNfsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeLocationNfsInput>
    public typealias MOutput = OperationOutput<DescribeLocationNfsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLocationNfsOutputError>
}

public struct DescribeLocationNfsInputBodyMiddleware: Middleware {
    public let id: String = "DescribeLocationNfsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLocationNfsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLocationNfsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeLocationNfsInput>
    public typealias MOutput = OperationOutput<DescribeLocationNfsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLocationNfsOutputError>
}

extension DescribeLocationNfsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case locationArn = "LocationArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let locationArn = locationArn {
            try encodeContainer.encode(locationArn, forKey: .locationArn)
        }
    }
}