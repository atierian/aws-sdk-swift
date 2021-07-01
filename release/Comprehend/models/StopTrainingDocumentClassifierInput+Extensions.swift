// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StopTrainingDocumentClassifierInputHeadersMiddleware: Middleware {
    public let id: String = "StopTrainingDocumentClassifierInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopTrainingDocumentClassifierInput>,
                  next: H) -> Swift.Result<OperationOutput<StopTrainingDocumentClassifierOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopTrainingDocumentClassifierInput>
    public typealias MOutput = OperationOutput<StopTrainingDocumentClassifierOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopTrainingDocumentClassifierOutputError>
}

public struct StopTrainingDocumentClassifierInputQueryItemMiddleware: Middleware {
    public let id: String = "StopTrainingDocumentClassifierInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopTrainingDocumentClassifierInput>,
                  next: H) -> Swift.Result<OperationOutput<StopTrainingDocumentClassifierOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopTrainingDocumentClassifierInput>
    public typealias MOutput = OperationOutput<StopTrainingDocumentClassifierOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopTrainingDocumentClassifierOutputError>
}

public struct StopTrainingDocumentClassifierInputBodyMiddleware: Middleware {
    public let id: String = "StopTrainingDocumentClassifierInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopTrainingDocumentClassifierInput>,
                  next: H) -> Swift.Result<OperationOutput<StopTrainingDocumentClassifierOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StopTrainingDocumentClassifierInput>
    public typealias MOutput = OperationOutput<StopTrainingDocumentClassifierOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopTrainingDocumentClassifierOutputError>
}

extension StopTrainingDocumentClassifierInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case documentClassifierArn = "DocumentClassifierArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let documentClassifierArn = documentClassifierArn {
            try encodeContainer.encode(documentClassifierArn, forKey: .documentClassifierArn)
        }
    }
}