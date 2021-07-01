// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct LaunchAppInputHeadersMiddleware: Middleware {
    public let id: String = "LaunchAppInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<LaunchAppInput>,
                  next: H) -> Swift.Result<OperationOutput<LaunchAppOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<LaunchAppInput>
    public typealias MOutput = OperationOutput<LaunchAppOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<LaunchAppOutputError>
}

public struct LaunchAppInputQueryItemMiddleware: Middleware {
    public let id: String = "LaunchAppInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<LaunchAppInput>,
                  next: H) -> Swift.Result<OperationOutput<LaunchAppOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<LaunchAppInput>
    public typealias MOutput = OperationOutput<LaunchAppOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<LaunchAppOutputError>
}

public struct LaunchAppInputBodyMiddleware: Middleware {
    public let id: String = "LaunchAppInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<LaunchAppInput>,
                  next: H) -> Swift.Result<OperationOutput<LaunchAppOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<LaunchAppInput>
    public typealias MOutput = OperationOutput<LaunchAppOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<LaunchAppOutputError>
}

extension LaunchAppInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case appId
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let appId = appId {
            try encodeContainer.encode(appId, forKey: .appId)
        }
    }
}