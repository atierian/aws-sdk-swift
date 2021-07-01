// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateShardCountInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateShardCountInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateShardCountInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateShardCountOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateShardCountInput>
    public typealias MOutput = OperationOutput<UpdateShardCountOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateShardCountOutputError>
}

public struct UpdateShardCountInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateShardCountInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateShardCountInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateShardCountOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateShardCountInput>
    public typealias MOutput = OperationOutput<UpdateShardCountOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateShardCountOutputError>
}

public struct UpdateShardCountInputBodyMiddleware: Middleware {
    public let id: String = "UpdateShardCountInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateShardCountInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateShardCountOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateShardCountInput>
    public typealias MOutput = OperationOutput<UpdateShardCountOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateShardCountOutputError>
}

extension UpdateShardCountInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case scalingType = "ScalingType"
        case streamName = "StreamName"
        case targetShardCount = "TargetShardCount"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let scalingType = scalingType {
            try encodeContainer.encode(scalingType.rawValue, forKey: .scalingType)
        }
        if let streamName = streamName {
            try encodeContainer.encode(streamName, forKey: .streamName)
        }
        if let targetShardCount = targetShardCount {
            try encodeContainer.encode(targetShardCount, forKey: .targetShardCount)
        }
    }
}