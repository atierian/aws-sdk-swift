// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ActivateGatewayInputHeadersMiddleware: Middleware {
    public let id: String = "ActivateGatewayInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ActivateGatewayInput>,
                  next: H) -> Swift.Result<OperationOutput<ActivateGatewayOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ActivateGatewayInput>
    public typealias MOutput = OperationOutput<ActivateGatewayOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ActivateGatewayOutputError>
}

public struct ActivateGatewayInputQueryItemMiddleware: Middleware {
    public let id: String = "ActivateGatewayInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ActivateGatewayInput>,
                  next: H) -> Swift.Result<OperationOutput<ActivateGatewayOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ActivateGatewayInput>
    public typealias MOutput = OperationOutput<ActivateGatewayOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ActivateGatewayOutputError>
}

public struct ActivateGatewayInputBodyMiddleware: Middleware {
    public let id: String = "ActivateGatewayInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ActivateGatewayInput>,
                  next: H) -> Swift.Result<OperationOutput<ActivateGatewayOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ActivateGatewayInput>
    public typealias MOutput = OperationOutput<ActivateGatewayOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ActivateGatewayOutputError>
}

extension ActivateGatewayInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case activationKey = "ActivationKey"
        case gatewayName = "GatewayName"
        case gatewayRegion = "GatewayRegion"
        case gatewayTimezone = "GatewayTimezone"
        case gatewayType = "GatewayType"
        case mediumChangerType = "MediumChangerType"
        case tags = "Tags"
        case tapeDriveType = "TapeDriveType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let activationKey = activationKey {
            try encodeContainer.encode(activationKey, forKey: .activationKey)
        }
        if let gatewayName = gatewayName {
            try encodeContainer.encode(gatewayName, forKey: .gatewayName)
        }
        if let gatewayRegion = gatewayRegion {
            try encodeContainer.encode(gatewayRegion, forKey: .gatewayRegion)
        }
        if let gatewayTimezone = gatewayTimezone {
            try encodeContainer.encode(gatewayTimezone, forKey: .gatewayTimezone)
        }
        if let gatewayType = gatewayType {
            try encodeContainer.encode(gatewayType, forKey: .gatewayType)
        }
        if let mediumChangerType = mediumChangerType {
            try encodeContainer.encode(mediumChangerType, forKey: .mediumChangerType)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for tags0 in tags {
                try tagsContainer.encode(tags0)
            }
        }
        if let tapeDriveType = tapeDriveType {
            try encodeContainer.encode(tapeDriveType, forKey: .tapeDriveType)
        }
    }
}