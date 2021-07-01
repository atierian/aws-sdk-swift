// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RegisterCertificateWithoutCAInputHeadersMiddleware: Middleware {
    public let id: String = "RegisterCertificateWithoutCAInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterCertificateWithoutCAInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterCertificateWithoutCAOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterCertificateWithoutCAInput>
    public typealias MOutput = OperationOutput<RegisterCertificateWithoutCAOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterCertificateWithoutCAOutputError>
}

public struct RegisterCertificateWithoutCAInputQueryItemMiddleware: Middleware {
    public let id: String = "RegisterCertificateWithoutCAInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterCertificateWithoutCAInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterCertificateWithoutCAOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterCertificateWithoutCAInput>
    public typealias MOutput = OperationOutput<RegisterCertificateWithoutCAOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterCertificateWithoutCAOutputError>
}

public struct RegisterCertificateWithoutCAInputBodyMiddleware: Middleware {
    public let id: String = "RegisterCertificateWithoutCAInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterCertificateWithoutCAInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterCertificateWithoutCAOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RegisterCertificateWithoutCAInput>
    public typealias MOutput = OperationOutput<RegisterCertificateWithoutCAOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterCertificateWithoutCAOutputError>
}

extension RegisterCertificateWithoutCAInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case certificatePem
        case status
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let certificatePem = certificatePem {
            try encodeContainer.encode(certificatePem, forKey: .certificatePem)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }
}