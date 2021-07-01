// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateBasePathMappingInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateBasePathMappingInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateBasePathMappingInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateBasePathMappingOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateBasePathMappingInput>
    public typealias MOutput = OperationOutput<UpdateBasePathMappingOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateBasePathMappingOutputError>
}

public struct UpdateBasePathMappingInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateBasePathMappingInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateBasePathMappingInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateBasePathMappingOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateBasePathMappingInput>
    public typealias MOutput = OperationOutput<UpdateBasePathMappingOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateBasePathMappingOutputError>
}

public struct UpdateBasePathMappingInputBodyMiddleware: Middleware {
    public let id: String = "UpdateBasePathMappingInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateBasePathMappingInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateBasePathMappingOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateBasePathMappingInput>
    public typealias MOutput = OperationOutput<UpdateBasePathMappingOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateBasePathMappingOutputError>
}

extension UpdateBasePathMappingInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case patchOperations
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let patchOperations = patchOperations {
            var patchOperationsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .patchOperations)
            for listofpatchoperation0 in patchOperations {
                try patchOperationsContainer.encode(listofpatchoperation0)
            }
        }
    }
}