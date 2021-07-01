// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteArchiveInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteArchiveInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteArchiveInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteArchiveOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteArchiveInput>
    public typealias MOutput = OperationOutput<DeleteArchiveOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteArchiveOutputError>
}

public struct DeleteArchiveInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteArchiveInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteArchiveInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteArchiveOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteArchiveInput>
    public typealias MOutput = OperationOutput<DeleteArchiveOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteArchiveOutputError>
}

public struct DeleteArchiveInputBodyMiddleware: Middleware {
    public let id: String = "DeleteArchiveInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteArchiveInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteArchiveOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteArchiveInput>
    public typealias MOutput = OperationOutput<DeleteArchiveOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteArchiveOutputError>
}

extension DeleteArchiveInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case archiveName = "ArchiveName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let archiveName = archiveName {
            try encodeContainer.encode(archiveName, forKey: .archiveName)
        }
    }
}