// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ModifyInstanceCreditSpecificationInputHeadersMiddleware: Middleware {
    public let id: String = "ModifyInstanceCreditSpecificationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyInstanceCreditSpecificationInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyInstanceCreditSpecificationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyInstanceCreditSpecificationInput>
    public typealias MOutput = OperationOutput<ModifyInstanceCreditSpecificationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyInstanceCreditSpecificationOutputError>
}

public struct ModifyInstanceCreditSpecificationInputQueryItemMiddleware: Middleware {
    public let id: String = "ModifyInstanceCreditSpecificationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyInstanceCreditSpecificationInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyInstanceCreditSpecificationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyInstanceCreditSpecificationInput>
    public typealias MOutput = OperationOutput<ModifyInstanceCreditSpecificationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyInstanceCreditSpecificationOutputError>
}

public struct ModifyInstanceCreditSpecificationInputBodyMiddleware: Middleware {
    public let id: String = "ModifyInstanceCreditSpecificationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyInstanceCreditSpecificationInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyInstanceCreditSpecificationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ModifyInstanceCreditSpecificationInput>
    public typealias MOutput = OperationOutput<ModifyInstanceCreditSpecificationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyInstanceCreditSpecificationOutputError>
}

extension ModifyInstanceCreditSpecificationInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let clientToken = clientToken {
            try container.encode(clientToken, forKey: Key("ClientToken"))
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let instanceCreditSpecifications = instanceCreditSpecifications {
            if !instanceCreditSpecifications.isEmpty {
                for (index0, instancecreditspecificationrequest0) in instanceCreditSpecifications.enumerated() {
                    var instanceCreditSpecificationsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("InstanceCreditSpecification.\(index0.advanced(by: 1))"))
                    try instanceCreditSpecificationsContainer0.encode(instancecreditspecificationrequest0, forKey: Key(""))
                }
            }
        }
        try container.encode("ModifyInstanceCreditSpecification", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}