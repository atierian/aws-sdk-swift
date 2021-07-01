// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartMaintenanceInputHeadersMiddleware: Middleware {
    public let id: String = "StartMaintenanceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartMaintenanceInput>,
                  next: H) -> Swift.Result<OperationOutput<StartMaintenanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartMaintenanceInput>
    public typealias MOutput = OperationOutput<StartMaintenanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartMaintenanceOutputError>
}

public struct StartMaintenanceInputQueryItemMiddleware: Middleware {
    public let id: String = "StartMaintenanceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartMaintenanceInput>,
                  next: H) -> Swift.Result<OperationOutput<StartMaintenanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartMaintenanceInput>
    public typealias MOutput = OperationOutput<StartMaintenanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartMaintenanceOutputError>
}

public struct StartMaintenanceInputBodyMiddleware: Middleware {
    public let id: String = "StartMaintenanceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartMaintenanceInput>,
                  next: H) -> Swift.Result<OperationOutput<StartMaintenanceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StartMaintenanceInput>
    public typealias MOutput = OperationOutput<StartMaintenanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartMaintenanceOutputError>
}

extension StartMaintenanceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case engineAttributes = "EngineAttributes"
        case serverName = "ServerName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let engineAttributes = engineAttributes {
            var engineAttributesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .engineAttributes)
            for engineattributes0 in engineAttributes {
                try engineAttributesContainer.encode(engineattributes0)
            }
        }
        if let serverName = serverName {
            try encodeContainer.encode(serverName, forKey: .serverName)
        }
    }
}