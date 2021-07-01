// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteRecordingConfigurationInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteRecordingConfigurationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteRecordingConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteRecordingConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteRecordingConfigurationInput>
    public typealias MOutput = OperationOutput<DeleteRecordingConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteRecordingConfigurationOutputError>
}

public struct DeleteRecordingConfigurationInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteRecordingConfigurationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteRecordingConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteRecordingConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteRecordingConfigurationInput>
    public typealias MOutput = OperationOutput<DeleteRecordingConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteRecordingConfigurationOutputError>
}

public struct DeleteRecordingConfigurationInputBodyMiddleware: Middleware {
    public let id: String = "DeleteRecordingConfigurationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteRecordingConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteRecordingConfigurationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteRecordingConfigurationInput>
    public typealias MOutput = OperationOutput<DeleteRecordingConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteRecordingConfigurationOutputError>
}

extension DeleteRecordingConfigurationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
    }
}