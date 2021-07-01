// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetTraceSummariesInputHeadersMiddleware: Middleware {
    public let id: String = "GetTraceSummariesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetTraceSummariesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetTraceSummariesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetTraceSummariesInput>
    public typealias MOutput = OperationOutput<GetTraceSummariesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetTraceSummariesOutputError>
}

public struct GetTraceSummariesInputQueryItemMiddleware: Middleware {
    public let id: String = "GetTraceSummariesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetTraceSummariesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetTraceSummariesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetTraceSummariesInput>
    public typealias MOutput = OperationOutput<GetTraceSummariesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetTraceSummariesOutputError>
}

public struct GetTraceSummariesInputBodyMiddleware: Middleware {
    public let id: String = "GetTraceSummariesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetTraceSummariesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetTraceSummariesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetTraceSummariesInput>
    public typealias MOutput = OperationOutput<GetTraceSummariesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetTraceSummariesOutputError>
}

extension GetTraceSummariesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case endTime = "EndTime"
        case filterExpression = "FilterExpression"
        case nextToken = "NextToken"
        case sampling = "Sampling"
        case samplingStrategy = "SamplingStrategy"
        case startTime = "StartTime"
        case timeRangeType = "TimeRangeType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let endTime = endTime {
            try encodeContainer.encode(endTime.timeIntervalSince1970, forKey: .endTime)
        }
        if let filterExpression = filterExpression {
            try encodeContainer.encode(filterExpression, forKey: .filterExpression)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let sampling = sampling {
            try encodeContainer.encode(sampling, forKey: .sampling)
        }
        if let samplingStrategy = samplingStrategy {
            try encodeContainer.encode(samplingStrategy, forKey: .samplingStrategy)
        }
        if let startTime = startTime {
            try encodeContainer.encode(startTime.timeIntervalSince1970, forKey: .startTime)
        }
        if let timeRangeType = timeRangeType {
            try encodeContainer.encode(timeRangeType.rawValue, forKey: .timeRangeType)
        }
    }
}