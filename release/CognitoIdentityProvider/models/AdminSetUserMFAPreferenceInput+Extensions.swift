// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AdminSetUserMFAPreferenceInputHeadersMiddleware: Middleware {
    public let id: String = "AdminSetUserMFAPreferenceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminSetUserMFAPreferenceInput>,
                  next: H) -> Swift.Result<OperationOutput<AdminSetUserMFAPreferenceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminSetUserMFAPreferenceInput>
    public typealias MOutput = OperationOutput<AdminSetUserMFAPreferenceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AdminSetUserMFAPreferenceOutputError>
}

public struct AdminSetUserMFAPreferenceInputQueryItemMiddleware: Middleware {
    public let id: String = "AdminSetUserMFAPreferenceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminSetUserMFAPreferenceInput>,
                  next: H) -> Swift.Result<OperationOutput<AdminSetUserMFAPreferenceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminSetUserMFAPreferenceInput>
    public typealias MOutput = OperationOutput<AdminSetUserMFAPreferenceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AdminSetUserMFAPreferenceOutputError>
}

public struct AdminSetUserMFAPreferenceInputBodyMiddleware: Middleware {
    public let id: String = "AdminSetUserMFAPreferenceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminSetUserMFAPreferenceInput>,
                  next: H) -> Swift.Result<OperationOutput<AdminSetUserMFAPreferenceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AdminSetUserMFAPreferenceInput>
    public typealias MOutput = OperationOutput<AdminSetUserMFAPreferenceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AdminSetUserMFAPreferenceOutputError>
}

extension AdminSetUserMFAPreferenceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case sMSMfaSettings = "SMSMfaSettings"
        case softwareTokenMfaSettings = "SoftwareTokenMfaSettings"
        case userPoolId = "UserPoolId"
        case username = "Username"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let sMSMfaSettings = sMSMfaSettings {
            try encodeContainer.encode(sMSMfaSettings, forKey: .sMSMfaSettings)
        }
        if let softwareTokenMfaSettings = softwareTokenMfaSettings {
            try encodeContainer.encode(softwareTokenMfaSettings, forKey: .softwareTokenMfaSettings)
        }
        if let userPoolId = userPoolId {
            try encodeContainer.encode(userPoolId, forKey: .userPoolId)
        }
        if let username = username {
            try encodeContainer.encode(username, forKey: .username)
        }
    }
}