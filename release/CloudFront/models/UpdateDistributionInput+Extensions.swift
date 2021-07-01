// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateDistributionInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateDistributionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateDistributionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateDistributionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let ifMatch = input.operationInput.ifMatch {
            input.builder.withHeader(name: "If-Match", value: String(ifMatch))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateDistributionInput>
    public typealias MOutput = OperationOutput<UpdateDistributionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateDistributionOutputError>
}

public struct UpdateDistributionInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateDistributionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateDistributionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateDistributionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateDistributionInput>
    public typealias MOutput = OperationOutput<UpdateDistributionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateDistributionOutputError>
}

public struct UpdateDistributionInputBodyMiddleware: Middleware {
    public let id: String = "UpdateDistributionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateDistributionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateDistributionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let distributionConfig = input.operationInput.distributionConfig {
            do {
                let encoder = context.getEncoder()
                let data = try encoder.encode(distributionConfig)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            } catch let err {
                return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
            }
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateDistributionInput>
    public typealias MOutput = OperationOutput<UpdateDistributionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateDistributionOutputError>
}

extension UpdateDistributionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case distributionConfig = "DistributionConfig"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://cloudfront.amazonaws.com/doc/2020-05-31/", forKey: Key("xmlns"))
        }
        if let distributionConfig = distributionConfig {
            try container.encode(distributionConfig, forKey: Key("DistributionConfig"))
        }
    }
}