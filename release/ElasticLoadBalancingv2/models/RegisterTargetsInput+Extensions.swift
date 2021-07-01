// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RegisterTargetsInputHeadersMiddleware: Middleware {
    public let id: String = "RegisterTargetsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterTargetsInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterTargetsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterTargetsInput>
    public typealias MOutput = OperationOutput<RegisterTargetsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterTargetsOutputError>
}

public struct RegisterTargetsInputQueryItemMiddleware: Middleware {
    public let id: String = "RegisterTargetsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterTargetsInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterTargetsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterTargetsInput>
    public typealias MOutput = OperationOutput<RegisterTargetsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterTargetsOutputError>
}

public struct RegisterTargetsInputBodyMiddleware: Middleware {
    public let id: String = "RegisterTargetsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterTargetsInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterTargetsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterTargetsInput>
    public typealias MOutput = OperationOutput<RegisterTargetsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterTargetsOutputError>
}

extension RegisterTargetsInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let targetGroupArn = targetGroupArn {
            try container.encode(targetGroupArn, forKey: Key("TargetGroupArn"))
        }
        if let targets = targets {
            var targetsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Targets"))
            for (index0, targetdescription0) in targets.enumerated() {
                try targetsContainer.encode(targetdescription0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("RegisterTargets", forKey:Key("Action"))
        try container.encode("2015-12-01", forKey:Key("Version"))
    }
}