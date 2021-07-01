// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RetrieveDomainAuthCodeInputHeadersMiddleware: Middleware {
    public let id: String = "RetrieveDomainAuthCodeInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RetrieveDomainAuthCodeInput>,
                  next: H) -> Swift.Result<OperationOutput<RetrieveDomainAuthCodeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RetrieveDomainAuthCodeInput>
    public typealias MOutput = OperationOutput<RetrieveDomainAuthCodeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RetrieveDomainAuthCodeOutputError>
}

public struct RetrieveDomainAuthCodeInputQueryItemMiddleware: Middleware {
    public let id: String = "RetrieveDomainAuthCodeInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RetrieveDomainAuthCodeInput>,
                  next: H) -> Swift.Result<OperationOutput<RetrieveDomainAuthCodeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RetrieveDomainAuthCodeInput>
    public typealias MOutput = OperationOutput<RetrieveDomainAuthCodeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RetrieveDomainAuthCodeOutputError>
}

public struct RetrieveDomainAuthCodeInputBodyMiddleware: Middleware {
    public let id: String = "RetrieveDomainAuthCodeInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RetrieveDomainAuthCodeInput>,
                  next: H) -> Swift.Result<OperationOutput<RetrieveDomainAuthCodeOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RetrieveDomainAuthCodeInput>
    public typealias MOutput = OperationOutput<RetrieveDomainAuthCodeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RetrieveDomainAuthCodeOutputError>
}

extension RetrieveDomainAuthCodeInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case domainName = "DomainName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let domainName = domainName {
            try encodeContainer.encode(domainName, forKey: .domainName)
        }
    }
}