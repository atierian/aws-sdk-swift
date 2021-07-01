// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListPublicKeysInputHeadersMiddleware: Middleware {
    public let id: String = "ListPublicKeysInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPublicKeysInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPublicKeysOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListPublicKeysInput>
    public typealias MOutput = OperationOutput<ListPublicKeysOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPublicKeysOutputError>
}

public struct ListPublicKeysInputQueryItemMiddleware: Middleware {
    public let id: String = "ListPublicKeysInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPublicKeysInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPublicKeysOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListPublicKeysInput>
    public typealias MOutput = OperationOutput<ListPublicKeysOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPublicKeysOutputError>
}

public struct ListPublicKeysInputBodyMiddleware: Middleware {
    public let id: String = "ListPublicKeysInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListPublicKeysInput>,
                  next: H) -> Swift.Result<OperationOutput<ListPublicKeysOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListPublicKeysInput>
    public typealias MOutput = OperationOutput<ListPublicKeysOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListPublicKeysOutputError>
}

extension ListPublicKeysInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case endTime = "EndTime"
        case nextToken = "NextToken"
        case startTime = "StartTime"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let endTime = endTime {
            try encodeContainer.encode(endTime.timeIntervalSince1970, forKey: .endTime)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let startTime = startTime {
            try encodeContainer.encode(startTime.timeIntervalSince1970, forKey: .startTime)
        }
    }
}