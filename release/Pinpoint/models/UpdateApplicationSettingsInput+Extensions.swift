// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateApplicationSettingsInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateApplicationSettingsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateApplicationSettingsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateApplicationSettingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateApplicationSettingsInput>
    public typealias MOutput = OperationOutput<UpdateApplicationSettingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateApplicationSettingsOutputError>
}

public struct UpdateApplicationSettingsInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateApplicationSettingsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateApplicationSettingsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateApplicationSettingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateApplicationSettingsInput>
    public typealias MOutput = OperationOutput<UpdateApplicationSettingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateApplicationSettingsOutputError>
}

public struct UpdateApplicationSettingsInputBodyMiddleware: Middleware {
    public let id: String = "UpdateApplicationSettingsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateApplicationSettingsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateApplicationSettingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let writeApplicationSettingsRequest = input.operationInput.writeApplicationSettingsRequest {
            do {
                let encoder = context.getEncoder()
                let data = try encoder.encode(writeApplicationSettingsRequest)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            } catch let err {
                return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
            }
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateApplicationSettingsInput>
    public typealias MOutput = OperationOutput<UpdateApplicationSettingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateApplicationSettingsOutputError>
}

extension UpdateApplicationSettingsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case writeApplicationSettingsRequest = "WriteApplicationSettingsRequest"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let writeApplicationSettingsRequest = writeApplicationSettingsRequest {
            try encodeContainer.encode(writeApplicationSettingsRequest, forKey: .writeApplicationSettingsRequest)
        }
    }
}