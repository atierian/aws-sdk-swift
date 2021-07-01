// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteScalingPolicyInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteScalingPolicyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteScalingPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteScalingPolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteScalingPolicyInput>
    public typealias MOutput = OperationOutput<DeleteScalingPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteScalingPolicyOutputError>
}

public struct DeleteScalingPolicyInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteScalingPolicyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteScalingPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteScalingPolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteScalingPolicyInput>
    public typealias MOutput = OperationOutput<DeleteScalingPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteScalingPolicyOutputError>
}

public struct DeleteScalingPolicyInputBodyMiddleware: Middleware {
    public let id: String = "DeleteScalingPolicyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteScalingPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteScalingPolicyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteScalingPolicyInput>
    public typealias MOutput = OperationOutput<DeleteScalingPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteScalingPolicyOutputError>
}

extension DeleteScalingPolicyInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case policyName = "PolicyName"
        case resourceId = "ResourceId"
        case scalableDimension = "ScalableDimension"
        case serviceNamespace = "ServiceNamespace"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let policyName = policyName {
            try encodeContainer.encode(policyName, forKey: .policyName)
        }
        if let resourceId = resourceId {
            try encodeContainer.encode(resourceId, forKey: .resourceId)
        }
        if let scalableDimension = scalableDimension {
            try encodeContainer.encode(scalableDimension.rawValue, forKey: .scalableDimension)
        }
        if let serviceNamespace = serviceNamespace {
            try encodeContainer.encode(serviceNamespace.rawValue, forKey: .serviceNamespace)
        }
    }
}