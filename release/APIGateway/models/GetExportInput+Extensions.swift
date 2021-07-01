// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetExportInputHeadersMiddleware: Middleware {
    public let id: String = "GetExportInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetExportInput>,
                  next: H) -> Swift.Result<OperationOutput<GetExportOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let accepts = input.operationInput.accepts {
            input.builder.withHeader(name: "Accept", value: String(accepts))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetExportInput>
    public typealias MOutput = OperationOutput<GetExportOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetExportOutputError>
}

public struct GetExportInputQueryItemMiddleware: Middleware {
    public let id: String = "GetExportInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetExportInput>,
                  next: H) -> Swift.Result<OperationOutput<GetExportOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let parameters = input.operationInput.parameters {
            let currentQueryItemNames = input.builder.currentQueryItems.map({$0.name})
            parameters.forEach { key0, value0 in
                if !currentQueryItemNames.contains(key0) {
                    let queryItem = URLQueryItem(name: key0.urlPercentEncoding(), value: value0.urlPercentEncoding())
                    input.builder.withQueryItem(queryItem)
                }
            }
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetExportInput>
    public typealias MOutput = OperationOutput<GetExportOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetExportOutputError>
}

extension GetExportInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}