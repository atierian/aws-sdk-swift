// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetDeploymentInputHeadersMiddleware: Middleware {
    public let id: String = "GetDeploymentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDeploymentInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDeploymentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDeploymentInput>
    public typealias MOutput = OperationOutput<GetDeploymentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDeploymentOutputError>
}

public struct GetDeploymentInputQueryItemMiddleware: Middleware {
    public let id: String = "GetDeploymentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDeploymentInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDeploymentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDeploymentInput>
    public typealias MOutput = OperationOutput<GetDeploymentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDeploymentOutputError>
}

public struct GetDeploymentInputBodyMiddleware: Middleware {
    public let id: String = "GetDeploymentInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDeploymentInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDeploymentOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetDeploymentInput>
    public typealias MOutput = OperationOutput<GetDeploymentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDeploymentOutputError>
}

extension GetDeploymentInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case deploymentId
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let deploymentId = deploymentId {
            try encodeContainer.encode(deploymentId, forKey: .deploymentId)
        }
    }
}