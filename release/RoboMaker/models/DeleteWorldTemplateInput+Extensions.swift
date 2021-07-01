// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteWorldTemplateInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteWorldTemplateInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteWorldTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteWorldTemplateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteWorldTemplateInput>
    public typealias MOutput = OperationOutput<DeleteWorldTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteWorldTemplateOutputError>
}

public struct DeleteWorldTemplateInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteWorldTemplateInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteWorldTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteWorldTemplateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteWorldTemplateInput>
    public typealias MOutput = OperationOutput<DeleteWorldTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteWorldTemplateOutputError>
}

public struct DeleteWorldTemplateInputBodyMiddleware: Middleware {
    public let id: String = "DeleteWorldTemplateInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteWorldTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteWorldTemplateOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteWorldTemplateInput>
    public typealias MOutput = OperationOutput<DeleteWorldTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteWorldTemplateOutputError>
}

extension DeleteWorldTemplateInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case template
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let template = template {
            try encodeContainer.encode(template, forKey: .template)
        }
    }
}