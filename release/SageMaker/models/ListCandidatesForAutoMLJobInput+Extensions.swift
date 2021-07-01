// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListCandidatesForAutoMLJobInputHeadersMiddleware: Middleware {
    public let id: String = "ListCandidatesForAutoMLJobInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListCandidatesForAutoMLJobInput>,
                  next: H) -> Swift.Result<OperationOutput<ListCandidatesForAutoMLJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListCandidatesForAutoMLJobInput>
    public typealias MOutput = OperationOutput<ListCandidatesForAutoMLJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListCandidatesForAutoMLJobOutputError>
}

public struct ListCandidatesForAutoMLJobInputQueryItemMiddleware: Middleware {
    public let id: String = "ListCandidatesForAutoMLJobInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListCandidatesForAutoMLJobInput>,
                  next: H) -> Swift.Result<OperationOutput<ListCandidatesForAutoMLJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListCandidatesForAutoMLJobInput>
    public typealias MOutput = OperationOutput<ListCandidatesForAutoMLJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListCandidatesForAutoMLJobOutputError>
}

public struct ListCandidatesForAutoMLJobInputBodyMiddleware: Middleware {
    public let id: String = "ListCandidatesForAutoMLJobInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListCandidatesForAutoMLJobInput>,
                  next: H) -> Swift.Result<OperationOutput<ListCandidatesForAutoMLJobOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListCandidatesForAutoMLJobInput>
    public typealias MOutput = OperationOutput<ListCandidatesForAutoMLJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListCandidatesForAutoMLJobOutputError>
}

extension ListCandidatesForAutoMLJobInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case autoMLJobName = "AutoMLJobName"
        case candidateNameEquals = "CandidateNameEquals"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case sortBy = "SortBy"
        case sortOrder = "SortOrder"
        case statusEquals = "StatusEquals"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let autoMLJobName = autoMLJobName {
            try encodeContainer.encode(autoMLJobName, forKey: .autoMLJobName)
        }
        if let candidateNameEquals = candidateNameEquals {
            try encodeContainer.encode(candidateNameEquals, forKey: .candidateNameEquals)
        }
        if maxResults != 0 {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let sortBy = sortBy {
            try encodeContainer.encode(sortBy.rawValue, forKey: .sortBy)
        }
        if let sortOrder = sortOrder {
            try encodeContainer.encode(sortOrder.rawValue, forKey: .sortOrder)
        }
        if let statusEquals = statusEquals {
            try encodeContainer.encode(statusEquals.rawValue, forKey: .statusEquals)
        }
    }
}