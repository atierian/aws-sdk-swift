// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RegisterDefaultPatchBaselineInputHeadersMiddleware: Middleware {
    public let id: String = "RegisterDefaultPatchBaselineInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterDefaultPatchBaselineInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterDefaultPatchBaselineOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterDefaultPatchBaselineInput>
    public typealias MOutput = OperationOutput<RegisterDefaultPatchBaselineOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterDefaultPatchBaselineOutputError>
}

public struct RegisterDefaultPatchBaselineInputQueryItemMiddleware: Middleware {
    public let id: String = "RegisterDefaultPatchBaselineInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterDefaultPatchBaselineInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterDefaultPatchBaselineOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterDefaultPatchBaselineInput>
    public typealias MOutput = OperationOutput<RegisterDefaultPatchBaselineOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterDefaultPatchBaselineOutputError>
}

public struct RegisterDefaultPatchBaselineInputBodyMiddleware: Middleware {
    public let id: String = "RegisterDefaultPatchBaselineInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterDefaultPatchBaselineInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterDefaultPatchBaselineOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RegisterDefaultPatchBaselineInput>
    public typealias MOutput = OperationOutput<RegisterDefaultPatchBaselineOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterDefaultPatchBaselineOutputError>
}

extension RegisterDefaultPatchBaselineInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case baselineId = "BaselineId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let baselineId = baselineId {
            try encodeContainer.encode(baselineId, forKey: .baselineId)
        }
    }
}