// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AcceptQualificationRequestInputHeadersMiddleware: Middleware {
    public let id: String = "AcceptQualificationRequestInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcceptQualificationRequestInput>,
                  next: H) -> Swift.Result<OperationOutput<AcceptQualificationRequestOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AcceptQualificationRequestInput>
    public typealias MOutput = OperationOutput<AcceptQualificationRequestOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcceptQualificationRequestOutputError>
}

public struct AcceptQualificationRequestInputQueryItemMiddleware: Middleware {
    public let id: String = "AcceptQualificationRequestInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcceptQualificationRequestInput>,
                  next: H) -> Swift.Result<OperationOutput<AcceptQualificationRequestOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AcceptQualificationRequestInput>
    public typealias MOutput = OperationOutput<AcceptQualificationRequestOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcceptQualificationRequestOutputError>
}

public struct AcceptQualificationRequestInputBodyMiddleware: Middleware {
    public let id: String = "AcceptQualificationRequestInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AcceptQualificationRequestInput>,
                  next: H) -> Swift.Result<OperationOutput<AcceptQualificationRequestOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AcceptQualificationRequestInput>
    public typealias MOutput = OperationOutput<AcceptQualificationRequestOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AcceptQualificationRequestOutputError>
}

extension AcceptQualificationRequestInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case integerValue = "IntegerValue"
        case qualificationRequestId = "QualificationRequestId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let integerValue = integerValue {
            try encodeContainer.encode(integerValue, forKey: .integerValue)
        }
        if let qualificationRequestId = qualificationRequestId {
            try encodeContainer.encode(qualificationRequestId, forKey: .qualificationRequestId)
        }
    }
}