// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetLicenseInputHeadersMiddleware: Middleware {
    public let id: String = "GetLicenseInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetLicenseInput>,
                  next: H) -> Swift.Result<OperationOutput<GetLicenseOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetLicenseInput>
    public typealias MOutput = OperationOutput<GetLicenseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetLicenseOutputError>
}

public struct GetLicenseInputQueryItemMiddleware: Middleware {
    public let id: String = "GetLicenseInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetLicenseInput>,
                  next: H) -> Swift.Result<OperationOutput<GetLicenseOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetLicenseInput>
    public typealias MOutput = OperationOutput<GetLicenseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetLicenseOutputError>
}

public struct GetLicenseInputBodyMiddleware: Middleware {
    public let id: String = "GetLicenseInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetLicenseInput>,
                  next: H) -> Swift.Result<OperationOutput<GetLicenseOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetLicenseInput>
    public typealias MOutput = OperationOutput<GetLicenseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetLicenseOutputError>
}

extension GetLicenseInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case licenseArn = "LicenseArn"
        case version = "Version"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let licenseArn = licenseArn {
            try encodeContainer.encode(licenseArn, forKey: .licenseArn)
        }
        if let version = version {
            try encodeContainer.encode(version, forKey: .version)
        }
    }
}