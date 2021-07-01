// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StopAssessmentRunInputHeadersMiddleware: Middleware {
    public let id: String = "StopAssessmentRunInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopAssessmentRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StopAssessmentRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopAssessmentRunInput>
    public typealias MOutput = OperationOutput<StopAssessmentRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopAssessmentRunOutputError>
}

public struct StopAssessmentRunInputQueryItemMiddleware: Middleware {
    public let id: String = "StopAssessmentRunInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopAssessmentRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StopAssessmentRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopAssessmentRunInput>
    public typealias MOutput = OperationOutput<StopAssessmentRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopAssessmentRunOutputError>
}

public struct StopAssessmentRunInputBodyMiddleware: Middleware {
    public let id: String = "StopAssessmentRunInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopAssessmentRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StopAssessmentRunOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StopAssessmentRunInput>
    public typealias MOutput = OperationOutput<StopAssessmentRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopAssessmentRunOutputError>
}

extension StopAssessmentRunInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case assessmentRunArn
        case stopAction
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let assessmentRunArn = assessmentRunArn {
            try encodeContainer.encode(assessmentRunArn, forKey: .assessmentRunArn)
        }
        if let stopAction = stopAction {
            try encodeContainer.encode(stopAction.rawValue, forKey: .stopAction)
        }
    }
}