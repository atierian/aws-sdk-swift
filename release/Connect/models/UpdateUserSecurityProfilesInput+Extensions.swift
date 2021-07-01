// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateUserSecurityProfilesInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateUserSecurityProfilesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateUserSecurityProfilesInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateUserSecurityProfilesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateUserSecurityProfilesInput>
    public typealias MOutput = OperationOutput<UpdateUserSecurityProfilesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateUserSecurityProfilesOutputError>
}

public struct UpdateUserSecurityProfilesInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateUserSecurityProfilesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateUserSecurityProfilesInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateUserSecurityProfilesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateUserSecurityProfilesInput>
    public typealias MOutput = OperationOutput<UpdateUserSecurityProfilesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateUserSecurityProfilesOutputError>
}

public struct UpdateUserSecurityProfilesInputBodyMiddleware: Middleware {
    public let id: String = "UpdateUserSecurityProfilesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateUserSecurityProfilesInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateUserSecurityProfilesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateUserSecurityProfilesInput>
    public typealias MOutput = OperationOutput<UpdateUserSecurityProfilesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateUserSecurityProfilesOutputError>
}

extension UpdateUserSecurityProfilesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case securityProfileIds = "SecurityProfileIds"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let securityProfileIds = securityProfileIds {
            var securityProfileIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .securityProfileIds)
            for securityprofileids0 in securityProfileIds {
                try securityProfileIdsContainer.encode(securityprofileids0)
            }
        }
    }
}