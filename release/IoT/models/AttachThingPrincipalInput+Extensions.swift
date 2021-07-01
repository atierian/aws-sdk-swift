// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AttachThingPrincipalInputHeadersMiddleware: Middleware {
    public let id: String = "AttachThingPrincipalInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AttachThingPrincipalInput>,
                  next: H) -> Swift.Result<OperationOutput<AttachThingPrincipalOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let principal = input.operationInput.principal {
            input.builder.withHeader(name: "x-amzn-principal", value: String(principal))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AttachThingPrincipalInput>
    public typealias MOutput = OperationOutput<AttachThingPrincipalOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AttachThingPrincipalOutputError>
}

public struct AttachThingPrincipalInputQueryItemMiddleware: Middleware {
    public let id: String = "AttachThingPrincipalInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AttachThingPrincipalInput>,
                  next: H) -> Swift.Result<OperationOutput<AttachThingPrincipalOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AttachThingPrincipalInput>
    public typealias MOutput = OperationOutput<AttachThingPrincipalOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AttachThingPrincipalOutputError>
}

extension AttachThingPrincipalInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}