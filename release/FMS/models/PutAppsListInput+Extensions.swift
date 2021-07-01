// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutAppsListInputHeadersMiddleware: Middleware {
    public let id: String = "PutAppsListInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutAppsListInput>,
                  next: H) -> Swift.Result<OperationOutput<PutAppsListOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutAppsListInput>
    public typealias MOutput = OperationOutput<PutAppsListOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutAppsListOutputError>
}

public struct PutAppsListInputQueryItemMiddleware: Middleware {
    public let id: String = "PutAppsListInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutAppsListInput>,
                  next: H) -> Swift.Result<OperationOutput<PutAppsListOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutAppsListInput>
    public typealias MOutput = OperationOutput<PutAppsListOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutAppsListOutputError>
}

public struct PutAppsListInputBodyMiddleware: Middleware {
    public let id: String = "PutAppsListInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutAppsListInput>,
                  next: H) -> Swift.Result<OperationOutput<PutAppsListOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutAppsListInput>
    public typealias MOutput = OperationOutput<PutAppsListOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutAppsListOutputError>
}

extension PutAppsListInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case appsList = "AppsList"
        case tagList = "TagList"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let appsList = appsList {
            try encodeContainer.encode(appsList, forKey: .appsList)
        }
        if let tagList = tagList {
            var tagListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tagList)
            for taglist0 in tagList {
                try tagListContainer.encode(taglist0)
            }
        }
    }
}