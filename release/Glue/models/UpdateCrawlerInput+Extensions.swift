// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateCrawlerInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateCrawlerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateCrawlerInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateCrawlerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateCrawlerInput>
    public typealias MOutput = OperationOutput<UpdateCrawlerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateCrawlerOutputError>
}

public struct UpdateCrawlerInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateCrawlerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateCrawlerInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateCrawlerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateCrawlerInput>
    public typealias MOutput = OperationOutput<UpdateCrawlerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateCrawlerOutputError>
}

public struct UpdateCrawlerInputBodyMiddleware: Middleware {
    public let id: String = "UpdateCrawlerInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateCrawlerInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateCrawlerOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateCrawlerInput>
    public typealias MOutput = OperationOutput<UpdateCrawlerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateCrawlerOutputError>
}

extension UpdateCrawlerInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case classifiers = "Classifiers"
        case configuration = "Configuration"
        case crawlerSecurityConfiguration = "CrawlerSecurityConfiguration"
        case databaseName = "DatabaseName"
        case description = "Description"
        case lineageConfiguration = "LineageConfiguration"
        case name = "Name"
        case recrawlPolicy = "RecrawlPolicy"
        case role = "Role"
        case schedule = "Schedule"
        case schemaChangePolicy = "SchemaChangePolicy"
        case tablePrefix = "TablePrefix"
        case targets = "Targets"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let classifiers = classifiers {
            var classifiersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .classifiers)
            for classifiernamelist0 in classifiers {
                try classifiersContainer.encode(classifiernamelist0)
            }
        }
        if let configuration = configuration {
            try encodeContainer.encode(configuration, forKey: .configuration)
        }
        if let crawlerSecurityConfiguration = crawlerSecurityConfiguration {
            try encodeContainer.encode(crawlerSecurityConfiguration, forKey: .crawlerSecurityConfiguration)
        }
        if let databaseName = databaseName {
            try encodeContainer.encode(databaseName, forKey: .databaseName)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let lineageConfiguration = lineageConfiguration {
            try encodeContainer.encode(lineageConfiguration, forKey: .lineageConfiguration)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let recrawlPolicy = recrawlPolicy {
            try encodeContainer.encode(recrawlPolicy, forKey: .recrawlPolicy)
        }
        if let role = role {
            try encodeContainer.encode(role, forKey: .role)
        }
        if let schedule = schedule {
            try encodeContainer.encode(schedule, forKey: .schedule)
        }
        if let schemaChangePolicy = schemaChangePolicy {
            try encodeContainer.encode(schemaChangePolicy, forKey: .schemaChangePolicy)
        }
        if let tablePrefix = tablePrefix {
            try encodeContainer.encode(tablePrefix, forKey: .tablePrefix)
        }
        if let targets = targets {
            try encodeContainer.encode(targets, forKey: .targets)
        }
    }
}