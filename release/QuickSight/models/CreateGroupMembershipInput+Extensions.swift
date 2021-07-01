// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateGroupMembershipInputHeadersMiddleware: Middleware {
    public let id: String = "CreateGroupMembershipInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateGroupMembershipInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateGroupMembershipOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateGroupMembershipInput>
    public typealias MOutput = OperationOutput<CreateGroupMembershipOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateGroupMembershipOutputError>
}

public struct CreateGroupMembershipInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateGroupMembershipInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateGroupMembershipInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateGroupMembershipOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateGroupMembershipInput>
    public typealias MOutput = OperationOutput<CreateGroupMembershipOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateGroupMembershipOutputError>
}

extension CreateGroupMembershipInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}