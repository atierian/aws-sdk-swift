// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetSuiteDefinitionInputHeadersMiddleware: Middleware {
    public let id: String = "GetSuiteDefinitionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSuiteDefinitionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSuiteDefinitionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSuiteDefinitionInput>
    public typealias MOutput = OperationOutput<GetSuiteDefinitionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSuiteDefinitionOutputError>
}

public struct GetSuiteDefinitionInputQueryItemMiddleware: Middleware {
    public let id: String = "GetSuiteDefinitionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSuiteDefinitionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSuiteDefinitionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let suiteDefinitionVersion = input.operationInput.suiteDefinitionVersion {
            let suiteDefinitionVersionQueryItem = URLQueryItem(name: "suiteDefinitionVersion".urlPercentEncoding(), value: String(suiteDefinitionVersion).urlPercentEncoding())
            input.builder.withQueryItem(suiteDefinitionVersionQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSuiteDefinitionInput>
    public typealias MOutput = OperationOutput<GetSuiteDefinitionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSuiteDefinitionOutputError>
}

extension GetSuiteDefinitionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}