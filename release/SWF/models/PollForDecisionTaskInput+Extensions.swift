// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PollForDecisionTaskInputHeadersMiddleware: Middleware {
    public let id: String = "PollForDecisionTaskInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PollForDecisionTaskInput>,
                  next: H) -> Swift.Result<OperationOutput<PollForDecisionTaskOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PollForDecisionTaskInput>
    public typealias MOutput = OperationOutput<PollForDecisionTaskOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PollForDecisionTaskOutputError>
}

public struct PollForDecisionTaskInputQueryItemMiddleware: Middleware {
    public let id: String = "PollForDecisionTaskInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PollForDecisionTaskInput>,
                  next: H) -> Swift.Result<OperationOutput<PollForDecisionTaskOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PollForDecisionTaskInput>
    public typealias MOutput = OperationOutput<PollForDecisionTaskOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PollForDecisionTaskOutputError>
}

public struct PollForDecisionTaskInputBodyMiddleware: Middleware {
    public let id: String = "PollForDecisionTaskInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PollForDecisionTaskInput>,
                  next: H) -> Swift.Result<OperationOutput<PollForDecisionTaskOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PollForDecisionTaskInput>
    public typealias MOutput = OperationOutput<PollForDecisionTaskOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PollForDecisionTaskOutputError>
}

extension PollForDecisionTaskInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case domain
        case identity
        case maximumPageSize
        case nextPageToken
        case reverseOrder
        case taskList
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let domain = domain {
            try encodeContainer.encode(domain, forKey: .domain)
        }
        if let identity = identity {
            try encodeContainer.encode(identity, forKey: .identity)
        }
        if maximumPageSize != 0 {
            try encodeContainer.encode(maximumPageSize, forKey: .maximumPageSize)
        }
        if let nextPageToken = nextPageToken {
            try encodeContainer.encode(nextPageToken, forKey: .nextPageToken)
        }
        if reverseOrder != false {
            try encodeContainer.encode(reverseOrder, forKey: .reverseOrder)
        }
        if let taskList = taskList {
            try encodeContainer.encode(taskList, forKey: .taskList)
        }
    }
}