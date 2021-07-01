// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetBlobInputHeadersMiddleware: Middleware {
    public let id: String = "GetBlobInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetBlobInput>,
                  next: H) -> Swift.Result<OperationOutput<GetBlobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetBlobInput>
    public typealias MOutput = OperationOutput<GetBlobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetBlobOutputError>
}

public struct GetBlobInputQueryItemMiddleware: Middleware {
    public let id: String = "GetBlobInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetBlobInput>,
                  next: H) -> Swift.Result<OperationOutput<GetBlobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetBlobInput>
    public typealias MOutput = OperationOutput<GetBlobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetBlobOutputError>
}

public struct GetBlobInputBodyMiddleware: Middleware {
    public let id: String = "GetBlobInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetBlobInput>,
                  next: H) -> Swift.Result<OperationOutput<GetBlobOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetBlobInput>
    public typealias MOutput = OperationOutput<GetBlobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetBlobOutputError>
}

extension GetBlobInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case blobId
        case repositoryName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let blobId = blobId {
            try encodeContainer.encode(blobId, forKey: .blobId)
        }
        if let repositoryName = repositoryName {
            try encodeContainer.encode(repositoryName, forKey: .repositoryName)
        }
    }
}