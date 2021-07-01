// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StopMonitoringMembersInputHeadersMiddleware: Middleware {
    public let id: String = "StopMonitoringMembersInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopMonitoringMembersInput>,
                  next: H) -> Swift.Result<OperationOutput<StopMonitoringMembersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopMonitoringMembersInput>
    public typealias MOutput = OperationOutput<StopMonitoringMembersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopMonitoringMembersOutputError>
}

public struct StopMonitoringMembersInputQueryItemMiddleware: Middleware {
    public let id: String = "StopMonitoringMembersInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopMonitoringMembersInput>,
                  next: H) -> Swift.Result<OperationOutput<StopMonitoringMembersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopMonitoringMembersInput>
    public typealias MOutput = OperationOutput<StopMonitoringMembersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopMonitoringMembersOutputError>
}

public struct StopMonitoringMembersInputBodyMiddleware: Middleware {
    public let id: String = "StopMonitoringMembersInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopMonitoringMembersInput>,
                  next: H) -> Swift.Result<OperationOutput<StopMonitoringMembersOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StopMonitoringMembersInput>
    public typealias MOutput = OperationOutput<StopMonitoringMembersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopMonitoringMembersOutputError>
}

extension StopMonitoringMembersInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accountIds = "accountIds"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accountIds = accountIds {
            var accountIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .accountIds)
            for accountids0 in accountIds {
                try accountIdsContainer.encode(accountids0)
            }
        }
    }
}