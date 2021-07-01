// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateFindingsInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateFindingsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFindingsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFindingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateFindingsInput>
    public typealias MOutput = OperationOutput<UpdateFindingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFindingsOutputError>
}

public struct UpdateFindingsInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateFindingsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFindingsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFindingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateFindingsInput>
    public typealias MOutput = OperationOutput<UpdateFindingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFindingsOutputError>
}

public struct UpdateFindingsInputBodyMiddleware: Middleware {
    public let id: String = "UpdateFindingsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFindingsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFindingsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateFindingsInput>
    public typealias MOutput = OperationOutput<UpdateFindingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFindingsOutputError>
}

extension UpdateFindingsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case note = "Note"
        case recordState = "RecordState"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let filters = filters {
            try encodeContainer.encode(filters, forKey: .filters)
        }
        if let note = note {
            try encodeContainer.encode(note, forKey: .note)
        }
        if let recordState = recordState {
            try encodeContainer.encode(recordState.rawValue, forKey: .recordState)
        }
    }
}