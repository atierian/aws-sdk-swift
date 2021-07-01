// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeWorldExportJobInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeWorldExportJobInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeWorldExportJobInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeWorldExportJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeWorldExportJobInput>
    public typealias MOutput = OperationOutput<DescribeWorldExportJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeWorldExportJobOutputError>
}

public struct DescribeWorldExportJobInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeWorldExportJobInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeWorldExportJobInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeWorldExportJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeWorldExportJobInput>
    public typealias MOutput = OperationOutput<DescribeWorldExportJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeWorldExportJobOutputError>
}

public struct DescribeWorldExportJobInputBodyMiddleware: Middleware {
    public let id: String = "DescribeWorldExportJobInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeWorldExportJobInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeWorldExportJobOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeWorldExportJobInput>
    public typealias MOutput = OperationOutput<DescribeWorldExportJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeWorldExportJobOutputError>
}

extension DescribeWorldExportJobInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case job
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let job = job {
            try encodeContainer.encode(job, forKey: .job)
        }
    }
}