// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutSessionInputHeadersMiddleware: Middleware {
    public let id: String = "PutSessionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutSessionInput>,
                  next: H) -> Swift.Result<OperationOutput<PutSessionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let accept = input.operationInput.accept {
            input.builder.withHeader(name: "Accept", value: String(accept))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutSessionInput>
    public typealias MOutput = OperationOutput<PutSessionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutSessionOutputError>
}

public struct PutSessionInputQueryItemMiddleware: Middleware {
    public let id: String = "PutSessionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutSessionInput>,
                  next: H) -> Swift.Result<OperationOutput<PutSessionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutSessionInput>
    public typealias MOutput = OperationOutput<PutSessionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutSessionOutputError>
}

public struct PutSessionInputBodyMiddleware: Middleware {
    public let id: String = "PutSessionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutSessionInput>,
                  next: H) -> Swift.Result<OperationOutput<PutSessionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutSessionInput>
    public typealias MOutput = OperationOutput<PutSessionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutSessionOutputError>
}

extension PutSessionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case activeContexts
        case dialogAction
        case recentIntentSummaryView
        case sessionAttributes
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let activeContexts = activeContexts {
            var activeContextsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .activeContexts)
            for activecontextslist0 in activeContexts {
                try activeContextsContainer.encode(activecontextslist0)
            }
        }
        if let dialogAction = dialogAction {
            try encodeContainer.encode(dialogAction, forKey: .dialogAction)
        }
        if let recentIntentSummaryView = recentIntentSummaryView {
            var recentIntentSummaryViewContainer = encodeContainer.nestedUnkeyedContainer(forKey: .recentIntentSummaryView)
            for intentsummarylist0 in recentIntentSummaryView {
                try recentIntentSummaryViewContainer.encode(intentsummarylist0)
            }
        }
        if let sessionAttributes = sessionAttributes {
            var sessionAttributesContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .sessionAttributes)
            for (dictKey0, stringmap0) in sessionAttributes {
                try sessionAttributesContainer.encode(stringmap0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}