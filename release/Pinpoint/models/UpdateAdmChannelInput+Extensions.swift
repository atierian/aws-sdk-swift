// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateAdmChannelInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateAdmChannelInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAdmChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAdmChannelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateAdmChannelInput>
    public typealias MOutput = OperationOutput<UpdateAdmChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAdmChannelOutputError>
}

public struct UpdateAdmChannelInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateAdmChannelInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAdmChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAdmChannelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateAdmChannelInput>
    public typealias MOutput = OperationOutput<UpdateAdmChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAdmChannelOutputError>
}

public struct UpdateAdmChannelInputBodyMiddleware: Middleware {
    public let id: String = "UpdateAdmChannelInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAdmChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAdmChannelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let aDMChannelRequest = input.operationInput.aDMChannelRequest {
            do {
                let encoder = context.getEncoder()
                let data = try encoder.encode(aDMChannelRequest)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            } catch let err {
                return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
            }
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateAdmChannelInput>
    public typealias MOutput = OperationOutput<UpdateAdmChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAdmChannelOutputError>
}

extension UpdateAdmChannelInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case aDMChannelRequest = "ADMChannelRequest"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let aDMChannelRequest = aDMChannelRequest {
            try encodeContainer.encode(aDMChannelRequest, forKey: .aDMChannelRequest)
        }
    }
}