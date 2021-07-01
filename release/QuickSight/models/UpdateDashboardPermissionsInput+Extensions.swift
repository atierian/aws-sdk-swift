// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateDashboardPermissionsInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateDashboardPermissionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateDashboardPermissionsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateDashboardPermissionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateDashboardPermissionsInput>
    public typealias MOutput = OperationOutput<UpdateDashboardPermissionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateDashboardPermissionsOutputError>
}

public struct UpdateDashboardPermissionsInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateDashboardPermissionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateDashboardPermissionsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateDashboardPermissionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateDashboardPermissionsInput>
    public typealias MOutput = OperationOutput<UpdateDashboardPermissionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateDashboardPermissionsOutputError>
}

public struct UpdateDashboardPermissionsInputBodyMiddleware: Middleware {
    public let id: String = "UpdateDashboardPermissionsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateDashboardPermissionsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateDashboardPermissionsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateDashboardPermissionsInput>
    public typealias MOutput = OperationOutput<UpdateDashboardPermissionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateDashboardPermissionsOutputError>
}

extension UpdateDashboardPermissionsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case grantPermissions = "GrantPermissions"
        case revokePermissions = "RevokePermissions"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let grantPermissions = grantPermissions {
            var grantPermissionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .grantPermissions)
            for updateresourcepermissionlist0 in grantPermissions {
                try grantPermissionsContainer.encode(updateresourcepermissionlist0)
            }
        }
        if let revokePermissions = revokePermissions {
            var revokePermissionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .revokePermissions)
            for updateresourcepermissionlist0 in revokePermissions {
                try revokePermissionsContainer.encode(updateresourcepermissionlist0)
            }
        }
    }
}