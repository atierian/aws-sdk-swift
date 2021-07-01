// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeLunaClientInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeLunaClientInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLunaClientInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLunaClientOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeLunaClientInput>
    public typealias MOutput = OperationOutput<DescribeLunaClientOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLunaClientOutputError>
}

public struct DescribeLunaClientInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeLunaClientInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLunaClientInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLunaClientOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeLunaClientInput>
    public typealias MOutput = OperationOutput<DescribeLunaClientOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLunaClientOutputError>
}

public struct DescribeLunaClientInputBodyMiddleware: Middleware {
    public let id: String = "DescribeLunaClientInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLunaClientInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLunaClientOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeLunaClientInput>
    public typealias MOutput = OperationOutput<DescribeLunaClientOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLunaClientOutputError>
}

extension DescribeLunaClientInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case certificateFingerprint = "CertificateFingerprint"
        case clientArn = "ClientArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let certificateFingerprint = certificateFingerprint {
            try encodeContainer.encode(certificateFingerprint, forKey: .certificateFingerprint)
        }
        if let clientArn = clientArn {
            try encodeContainer.encode(clientArn, forKey: .clientArn)
        }
    }
}