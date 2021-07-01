// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateProvisioningClaimInputHeadersMiddleware: Middleware {
    public let id: String = "CreateProvisioningClaimInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateProvisioningClaimInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateProvisioningClaimOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateProvisioningClaimInput>
    public typealias MOutput = OperationOutput<CreateProvisioningClaimOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateProvisioningClaimOutputError>
}

public struct CreateProvisioningClaimInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateProvisioningClaimInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateProvisioningClaimInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateProvisioningClaimOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateProvisioningClaimInput>
    public typealias MOutput = OperationOutput<CreateProvisioningClaimOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateProvisioningClaimOutputError>
}

extension CreateProvisioningClaimInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}