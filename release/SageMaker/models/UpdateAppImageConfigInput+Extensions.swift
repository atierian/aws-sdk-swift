// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateAppImageConfigInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateAppImageConfigInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAppImageConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAppImageConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateAppImageConfigInput>
    public typealias MOutput = OperationOutput<UpdateAppImageConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAppImageConfigOutputError>
}

public struct UpdateAppImageConfigInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateAppImageConfigInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAppImageConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAppImageConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateAppImageConfigInput>
    public typealias MOutput = OperationOutput<UpdateAppImageConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAppImageConfigOutputError>
}

public struct UpdateAppImageConfigInputBodyMiddleware: Middleware {
    public let id: String = "UpdateAppImageConfigInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAppImageConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAppImageConfigOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateAppImageConfigInput>
    public typealias MOutput = OperationOutput<UpdateAppImageConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAppImageConfigOutputError>
}

extension UpdateAppImageConfigInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case appImageConfigName = "AppImageConfigName"
        case kernelGatewayImageConfig = "KernelGatewayImageConfig"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let appImageConfigName = appImageConfigName {
            try encodeContainer.encode(appImageConfigName, forKey: .appImageConfigName)
        }
        if let kernelGatewayImageConfig = kernelGatewayImageConfig {
            try encodeContainer.encode(kernelGatewayImageConfig, forKey: .kernelGatewayImageConfig)
        }
    }
}