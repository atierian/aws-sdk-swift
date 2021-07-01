// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DetachVolumeInputHeadersMiddleware: Middleware {
    public let id: String = "DetachVolumeInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DetachVolumeInput>,
                  next: H) -> Swift.Result<OperationOutput<DetachVolumeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DetachVolumeInput>
    public typealias MOutput = OperationOutput<DetachVolumeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DetachVolumeOutputError>
}

public struct DetachVolumeInputQueryItemMiddleware: Middleware {
    public let id: String = "DetachVolumeInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DetachVolumeInput>,
                  next: H) -> Swift.Result<OperationOutput<DetachVolumeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DetachVolumeInput>
    public typealias MOutput = OperationOutput<DetachVolumeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DetachVolumeOutputError>
}

public struct DetachVolumeInputBodyMiddleware: Middleware {
    public let id: String = "DetachVolumeInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DetachVolumeInput>,
                  next: H) -> Swift.Result<OperationOutput<DetachVolumeOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DetachVolumeInput>
    public typealias MOutput = OperationOutput<DetachVolumeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DetachVolumeOutputError>
}

extension DetachVolumeInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case forceDetach = "ForceDetach"
        case volumeARN = "VolumeARN"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let forceDetach = forceDetach {
            try encodeContainer.encode(forceDetach, forKey: .forceDetach)
        }
        if let volumeARN = volumeARN {
            try encodeContainer.encode(volumeARN, forKey: .volumeARN)
        }
    }
}