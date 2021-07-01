// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteStackInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteStackInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteStackInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteStackOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteStackInput>
    public typealias MOutput = OperationOutput<DeleteStackOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteStackOutputError>
}

public struct DeleteStackInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteStackInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteStackInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteStackOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteStackInput>
    public typealias MOutput = OperationOutput<DeleteStackOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteStackOutputError>
}

public struct DeleteStackInputBodyMiddleware: Middleware {
    public let id: String = "DeleteStackInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteStackInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteStackOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteStackInput>
    public typealias MOutput = OperationOutput<DeleteStackOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteStackOutputError>
}

extension DeleteStackInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }
}