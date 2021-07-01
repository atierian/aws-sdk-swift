// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListInputRoutingsInputHeadersMiddleware: Middleware {
    public let id: String = "ListInputRoutingsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListInputRoutingsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListInputRoutingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListInputRoutingsInput>
    public typealias MOutput = OperationOutput<ListInputRoutingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListInputRoutingsOutputError>
}

public struct ListInputRoutingsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListInputRoutingsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListInputRoutingsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListInputRoutingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListInputRoutingsInput>
    public typealias MOutput = OperationOutput<ListInputRoutingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListInputRoutingsOutputError>
}

public struct ListInputRoutingsInputBodyMiddleware: Middleware {
    public let id: String = "ListInputRoutingsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListInputRoutingsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListInputRoutingsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListInputRoutingsInput>
    public typealias MOutput = OperationOutput<ListInputRoutingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListInputRoutingsOutputError>
}

extension ListInputRoutingsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case inputIdentifier
        case maxResults
        case nextToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let inputIdentifier = inputIdentifier {
            try encodeContainer.encode(inputIdentifier, forKey: .inputIdentifier)
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}