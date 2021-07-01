// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateTrafficPolicyCommentInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateTrafficPolicyCommentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTrafficPolicyCommentInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTrafficPolicyCommentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateTrafficPolicyCommentInput>
    public typealias MOutput = OperationOutput<UpdateTrafficPolicyCommentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTrafficPolicyCommentOutputError>
}

public struct UpdateTrafficPolicyCommentInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateTrafficPolicyCommentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTrafficPolicyCommentInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTrafficPolicyCommentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateTrafficPolicyCommentInput>
    public typealias MOutput = OperationOutput<UpdateTrafficPolicyCommentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTrafficPolicyCommentOutputError>
}

public struct UpdateTrafficPolicyCommentInputBodyMiddleware: Middleware {
    public let id: String = "UpdateTrafficPolicyCommentInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTrafficPolicyCommentInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTrafficPolicyCommentOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateTrafficPolicyCommentInput>
    public typealias MOutput = OperationOutput<UpdateTrafficPolicyCommentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTrafficPolicyCommentOutputError>
}

extension UpdateTrafficPolicyCommentInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case comment = "Comment"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("https://route53.amazonaws.com/doc/2013-04-01/", forKey: Key("xmlns"))
        }
        if let comment = comment {
            try container.encode(comment, forKey: Key("comment"))
        }
    }
}