// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartJobRunInputHeadersMiddleware: Middleware {
    public let id: String = "StartJobRunInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartJobRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StartJobRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartJobRunInput>
    public typealias MOutput = OperationOutput<StartJobRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartJobRunOutputError>
}

public struct StartJobRunInputQueryItemMiddleware: Middleware {
    public let id: String = "StartJobRunInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartJobRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StartJobRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartJobRunInput>
    public typealias MOutput = OperationOutput<StartJobRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartJobRunOutputError>
}

public struct StartJobRunInputBodyMiddleware: Middleware {
    public let id: String = "StartJobRunInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartJobRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StartJobRunOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StartJobRunInput>
    public typealias MOutput = OperationOutput<StartJobRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartJobRunOutputError>
}

extension StartJobRunInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case allocatedCapacity = "AllocatedCapacity"
        case arguments = "Arguments"
        case jobName = "JobName"
        case jobRunId = "JobRunId"
        case maxCapacity = "MaxCapacity"
        case notificationProperty = "NotificationProperty"
        case numberOfWorkers = "NumberOfWorkers"
        case securityConfiguration = "SecurityConfiguration"
        case timeout = "Timeout"
        case workerType = "WorkerType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if allocatedCapacity != 0 {
            try encodeContainer.encode(allocatedCapacity, forKey: .allocatedCapacity)
        }
        if let arguments = arguments {
            var argumentsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .arguments)
            for (dictKey0, genericmap0) in arguments {
                try argumentsContainer.encode(genericmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let jobName = jobName {
            try encodeContainer.encode(jobName, forKey: .jobName)
        }
        if let jobRunId = jobRunId {
            try encodeContainer.encode(jobRunId, forKey: .jobRunId)
        }
        if let maxCapacity = maxCapacity {
            try encodeContainer.encode(maxCapacity, forKey: .maxCapacity)
        }
        if let notificationProperty = notificationProperty {
            try encodeContainer.encode(notificationProperty, forKey: .notificationProperty)
        }
        if let numberOfWorkers = numberOfWorkers {
            try encodeContainer.encode(numberOfWorkers, forKey: .numberOfWorkers)
        }
        if let securityConfiguration = securityConfiguration {
            try encodeContainer.encode(securityConfiguration, forKey: .securityConfiguration)
        }
        if let timeout = timeout {
            try encodeContainer.encode(timeout, forKey: .timeout)
        }
        if let workerType = workerType {
            try encodeContainer.encode(workerType.rawValue, forKey: .workerType)
        }
    }
}