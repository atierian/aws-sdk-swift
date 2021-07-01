// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RegisterInstanceInputHeadersMiddleware: Middleware {
    public let id: String = "RegisterInstanceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterInstanceInput>
    public typealias MOutput = OperationOutput<RegisterInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterInstanceOutputError>
}

public struct RegisterInstanceInputQueryItemMiddleware: Middleware {
    public let id: String = "RegisterInstanceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterInstanceInput>
    public typealias MOutput = OperationOutput<RegisterInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterInstanceOutputError>
}

public struct RegisterInstanceInputBodyMiddleware: Middleware {
    public let id: String = "RegisterInstanceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterInstanceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RegisterInstanceInput>
    public typealias MOutput = OperationOutput<RegisterInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterInstanceOutputError>
}

extension RegisterInstanceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case hostname = "Hostname"
        case instanceIdentity = "InstanceIdentity"
        case privateIp = "PrivateIp"
        case publicIp = "PublicIp"
        case rsaPublicKey = "RsaPublicKey"
        case rsaPublicKeyFingerprint = "RsaPublicKeyFingerprint"
        case stackId = "StackId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let hostname = hostname {
            try encodeContainer.encode(hostname, forKey: .hostname)
        }
        if let instanceIdentity = instanceIdentity {
            try encodeContainer.encode(instanceIdentity, forKey: .instanceIdentity)
        }
        if let privateIp = privateIp {
            try encodeContainer.encode(privateIp, forKey: .privateIp)
        }
        if let publicIp = publicIp {
            try encodeContainer.encode(publicIp, forKey: .publicIp)
        }
        if let rsaPublicKey = rsaPublicKey {
            try encodeContainer.encode(rsaPublicKey, forKey: .rsaPublicKey)
        }
        if let rsaPublicKeyFingerprint = rsaPublicKeyFingerprint {
            try encodeContainer.encode(rsaPublicKeyFingerprint, forKey: .rsaPublicKeyFingerprint)
        }
        if let stackId = stackId {
            try encodeContainer.encode(stackId, forKey: .stackId)
        }
    }
}