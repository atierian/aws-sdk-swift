// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AddTagsToCertificateInputHeadersMiddleware: Middleware {
    public let id: String = "AddTagsToCertificateInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddTagsToCertificateInput>,
                  next: H) -> Swift.Result<OperationOutput<AddTagsToCertificateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AddTagsToCertificateInput>
    public typealias MOutput = OperationOutput<AddTagsToCertificateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddTagsToCertificateOutputError>
}

public struct AddTagsToCertificateInputQueryItemMiddleware: Middleware {
    public let id: String = "AddTagsToCertificateInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddTagsToCertificateInput>,
                  next: H) -> Swift.Result<OperationOutput<AddTagsToCertificateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AddTagsToCertificateInput>
    public typealias MOutput = OperationOutput<AddTagsToCertificateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddTagsToCertificateOutputError>
}

public struct AddTagsToCertificateInputBodyMiddleware: Middleware {
    public let id: String = "AddTagsToCertificateInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddTagsToCertificateInput>,
                  next: H) -> Swift.Result<OperationOutput<AddTagsToCertificateOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AddTagsToCertificateInput>
    public typealias MOutput = OperationOutput<AddTagsToCertificateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddTagsToCertificateOutputError>
}

extension AddTagsToCertificateInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case certificateArn = "CertificateArn"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let certificateArn = certificateArn {
            try encodeContainer.encode(certificateArn, forKey: .certificateArn)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
    }
}