// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateRealtimeLogConfigInputHeadersMiddleware: Middleware {
    public let id: String = "CreateRealtimeLogConfigInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateRealtimeLogConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateRealtimeLogConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateRealtimeLogConfigInput>
    public typealias MOutput = OperationOutput<CreateRealtimeLogConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateRealtimeLogConfigOutputError>
}

public struct CreateRealtimeLogConfigInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateRealtimeLogConfigInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateRealtimeLogConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateRealtimeLogConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateRealtimeLogConfigInput>
    public typealias MOutput = OperationOutput<CreateRealtimeLogConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateRealtimeLogConfigOutputError>
}

public struct CreateRealtimeLogConfigInputBodyMiddleware: Middleware {
    public let id: String = "CreateRealtimeLogConfigInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateRealtimeLogConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateRealtimeLogConfigOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateRealtimeLogConfigInput>
    public typealias MOutput = OperationOutput<CreateRealtimeLogConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateRealtimeLogConfigOutputError>
}

extension CreateRealtimeLogConfigInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case endPoints = "EndPoints"
        case fields = "Fields"
        case name = "Name"
        case samplingRate = "SamplingRate"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://cloudfront.amazonaws.com/doc/2020-05-31/", forKey: Key("xmlns"))
        }
        if let endPoints = endPoints {
            var endPointsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("endPoints"))
            for endpoint0 in endPoints {
                try endPointsContainer.encode(endpoint0, forKey: Key("member"))
            }
        }
        if let fields = fields {
            var fieldsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("fields"))
            for string0 in fields {
                try fieldsContainer.encode(string0, forKey: Key("Field"))
            }
        }
        if let name = name {
            try container.encode(name, forKey: Key("name"))
        }
        if let samplingRate = samplingRate {
            try container.encode(samplingRate, forKey: Key("samplingRate"))
        }
    }
}