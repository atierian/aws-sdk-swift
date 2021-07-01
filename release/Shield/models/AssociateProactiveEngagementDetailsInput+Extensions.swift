// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AssociateProactiveEngagementDetailsInputHeadersMiddleware: Middleware {
    public let id: String = "AssociateProactiveEngagementDetailsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateProactiveEngagementDetailsInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateProactiveEngagementDetailsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateProactiveEngagementDetailsInput>
    public typealias MOutput = OperationOutput<AssociateProactiveEngagementDetailsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateProactiveEngagementDetailsOutputError>
}

public struct AssociateProactiveEngagementDetailsInputQueryItemMiddleware: Middleware {
    public let id: String = "AssociateProactiveEngagementDetailsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateProactiveEngagementDetailsInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateProactiveEngagementDetailsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateProactiveEngagementDetailsInput>
    public typealias MOutput = OperationOutput<AssociateProactiveEngagementDetailsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateProactiveEngagementDetailsOutputError>
}

public struct AssociateProactiveEngagementDetailsInputBodyMiddleware: Middleware {
    public let id: String = "AssociateProactiveEngagementDetailsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateProactiveEngagementDetailsInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateProactiveEngagementDetailsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AssociateProactiveEngagementDetailsInput>
    public typealias MOutput = OperationOutput<AssociateProactiveEngagementDetailsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateProactiveEngagementDetailsOutputError>
}

extension AssociateProactiveEngagementDetailsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case emergencyContactList = "EmergencyContactList"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let emergencyContactList = emergencyContactList {
            var emergencyContactListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .emergencyContactList)
            for emergencycontactlist0 in emergencyContactList {
                try emergencyContactListContainer.encode(emergencycontactlist0)
            }
        }
    }
}