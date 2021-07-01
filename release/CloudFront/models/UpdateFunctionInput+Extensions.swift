// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateFunctionInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateFunctionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFunctionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFunctionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let ifMatch = input.operationInput.ifMatch {
            input.builder.withHeader(name: "If-Match", value: String(ifMatch))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateFunctionInput>
    public typealias MOutput = OperationOutput<UpdateFunctionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFunctionOutputError>
}

public struct UpdateFunctionInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateFunctionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFunctionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFunctionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateFunctionInput>
    public typealias MOutput = OperationOutput<UpdateFunctionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFunctionOutputError>
}

public struct UpdateFunctionInputBodyMiddleware: Middleware {
    public let id: String = "UpdateFunctionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFunctionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFunctionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateFunctionInput>
    public typealias MOutput = OperationOutput<UpdateFunctionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFunctionOutputError>
}

extension UpdateFunctionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case functionCode = "FunctionCode"
        case functionConfig = "FunctionConfig"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://cloudfront.amazonaws.com/doc/2020-05-31/", forKey: Key("xmlns"))
        }
        if let functionCode = functionCode {
            try container.encode(functionCode, forKey: Key("functionCode"))
        }
        if let functionConfig = functionConfig {
            try container.encode(functionConfig, forKey: Key("functionConfig"))
        }
    }
}