// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeDirectoryConfigsInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeDirectoryConfigsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeDirectoryConfigsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeDirectoryConfigsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeDirectoryConfigsInput>
    public typealias MOutput = OperationOutput<DescribeDirectoryConfigsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeDirectoryConfigsOutputError>
}

public struct DescribeDirectoryConfigsInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeDirectoryConfigsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeDirectoryConfigsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeDirectoryConfigsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeDirectoryConfigsInput>
    public typealias MOutput = OperationOutput<DescribeDirectoryConfigsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeDirectoryConfigsOutputError>
}

public struct DescribeDirectoryConfigsInputBodyMiddleware: Middleware {
    public let id: String = "DescribeDirectoryConfigsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeDirectoryConfigsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeDirectoryConfigsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeDirectoryConfigsInput>
    public typealias MOutput = OperationOutput<DescribeDirectoryConfigsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeDirectoryConfigsOutputError>
}

extension DescribeDirectoryConfigsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case directoryNames = "DirectoryNames"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let directoryNames = directoryNames {
            var directoryNamesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .directoryNames)
            for directorynamelist0 in directoryNames {
                try directoryNamesContainer.encode(directorynamelist0)
            }
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}