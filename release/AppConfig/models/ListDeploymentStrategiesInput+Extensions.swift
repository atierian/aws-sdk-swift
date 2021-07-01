// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListDeploymentStrategiesInputHeadersMiddleware: Middleware {
    public let id: String = "ListDeploymentStrategiesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListDeploymentStrategiesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListDeploymentStrategiesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListDeploymentStrategiesInput>
    public typealias MOutput = OperationOutput<ListDeploymentStrategiesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListDeploymentStrategiesOutputError>
}

public struct ListDeploymentStrategiesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListDeploymentStrategiesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListDeploymentStrategiesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListDeploymentStrategiesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "next_token".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        let maxResultsQueryItem = URLQueryItem(name: "max_results".urlPercentEncoding(), value: String(input.operationInput.maxResults).urlPercentEncoding())
        input.builder.withQueryItem(maxResultsQueryItem)
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListDeploymentStrategiesInput>
    public typealias MOutput = OperationOutput<ListDeploymentStrategiesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListDeploymentStrategiesOutputError>
}

extension ListDeploymentStrategiesInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}