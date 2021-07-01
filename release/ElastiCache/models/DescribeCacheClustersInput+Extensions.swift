// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeCacheClustersInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeCacheClustersInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeCacheClustersInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeCacheClustersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeCacheClustersInput>
    public typealias MOutput = OperationOutput<DescribeCacheClustersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeCacheClustersOutputError>
}

public struct DescribeCacheClustersInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeCacheClustersInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeCacheClustersInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeCacheClustersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeCacheClustersInput>
    public typealias MOutput = OperationOutput<DescribeCacheClustersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeCacheClustersOutputError>
}

public struct DescribeCacheClustersInputBodyMiddleware: Middleware {
    public let id: String = "DescribeCacheClustersInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeCacheClustersInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeCacheClustersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeCacheClustersInput>
    public typealias MOutput = OperationOutput<DescribeCacheClustersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeCacheClustersOutputError>
}

extension DescribeCacheClustersInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let cacheClusterId = cacheClusterId {
            try container.encode(cacheClusterId, forKey: Key("CacheClusterId"))
        }
        if let marker = marker {
            try container.encode(marker, forKey: Key("Marker"))
        }
        if let maxRecords = maxRecords {
            try container.encode(maxRecords, forKey: Key("MaxRecords"))
        }
        if let showCacheClustersNotInReplicationGroups = showCacheClustersNotInReplicationGroups {
            try container.encode(showCacheClustersNotInReplicationGroups, forKey: Key("ShowCacheClustersNotInReplicationGroups"))
        }
        if let showCacheNodeInfo = showCacheNodeInfo {
            try container.encode(showCacheNodeInfo, forKey: Key("ShowCacheNodeInfo"))
        }
        try container.encode("DescribeCacheClusters", forKey:Key("Action"))
        try container.encode("2015-02-02", forKey:Key("Version"))
    }
}