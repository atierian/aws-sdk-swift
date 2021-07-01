// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateContextInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateContextInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateContextInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateContextOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateContextInput>
    public typealias MOutput = OperationOutput<UpdateContextOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateContextOutputError>
}

public struct UpdateContextInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateContextInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateContextInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateContextOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateContextInput>
    public typealias MOutput = OperationOutput<UpdateContextOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateContextOutputError>
}

public struct UpdateContextInputBodyMiddleware: Middleware {
    public let id: String = "UpdateContextInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateContextInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateContextOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateContextInput>
    public typealias MOutput = OperationOutput<UpdateContextOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateContextOutputError>
}

extension UpdateContextInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case contextName = "ContextName"
        case description = "Description"
        case properties = "Properties"
        case propertiesToRemove = "PropertiesToRemove"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let contextName = contextName {
            try encodeContainer.encode(contextName, forKey: .contextName)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let properties = properties {
            var propertiesContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .properties)
            for (dictKey0, lineageentityparameters0) in properties {
                try propertiesContainer.encode(lineageentityparameters0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let propertiesToRemove = propertiesToRemove {
            var propertiesToRemoveContainer = encodeContainer.nestedUnkeyedContainer(forKey: .propertiesToRemove)
            for listlineageentityparameterkey0 in propertiesToRemove {
                try propertiesToRemoveContainer.encode(listlineageentityparameterkey0)
            }
        }
    }
}