// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetModelPackageGroupPolicyInputHeadersMiddleware: Middleware {
    public let id: String = "GetModelPackageGroupPolicyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetModelPackageGroupPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<GetModelPackageGroupPolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetModelPackageGroupPolicyInput>
    public typealias MOutput = OperationOutput<GetModelPackageGroupPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetModelPackageGroupPolicyOutputError>
}

public struct GetModelPackageGroupPolicyInputQueryItemMiddleware: Middleware {
    public let id: String = "GetModelPackageGroupPolicyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetModelPackageGroupPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<GetModelPackageGroupPolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetModelPackageGroupPolicyInput>
    public typealias MOutput = OperationOutput<GetModelPackageGroupPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetModelPackageGroupPolicyOutputError>
}

public struct GetModelPackageGroupPolicyInputBodyMiddleware: Middleware {
    public let id: String = "GetModelPackageGroupPolicyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetModelPackageGroupPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<GetModelPackageGroupPolicyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetModelPackageGroupPolicyInput>
    public typealias MOutput = OperationOutput<GetModelPackageGroupPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetModelPackageGroupPolicyOutputError>
}

extension GetModelPackageGroupPolicyInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case modelPackageGroupName = "ModelPackageGroupName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let modelPackageGroupName = modelPackageGroupName {
            try encodeContainer.encode(modelPackageGroupName, forKey: .modelPackageGroupName)
        }
    }
}