// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartMailboxExportJobInputHeadersMiddleware: Middleware {
    public let id: String = "StartMailboxExportJobInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartMailboxExportJobInput>,
                  next: H) -> Swift.Result<OperationOutput<StartMailboxExportJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartMailboxExportJobInput>
    public typealias MOutput = OperationOutput<StartMailboxExportJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartMailboxExportJobOutputError>
}

public struct StartMailboxExportJobInputQueryItemMiddleware: Middleware {
    public let id: String = "StartMailboxExportJobInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartMailboxExportJobInput>,
                  next: H) -> Swift.Result<OperationOutput<StartMailboxExportJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartMailboxExportJobInput>
    public typealias MOutput = OperationOutput<StartMailboxExportJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartMailboxExportJobOutputError>
}

public struct StartMailboxExportJobInputBodyMiddleware: Middleware {
    public let id: String = "StartMailboxExportJobInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartMailboxExportJobInput>,
                  next: H) -> Swift.Result<OperationOutput<StartMailboxExportJobOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StartMailboxExportJobInput>
    public typealias MOutput = OperationOutput<StartMailboxExportJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartMailboxExportJobOutputError>
}

extension StartMailboxExportJobInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case description = "Description"
        case entityId = "EntityId"
        case kmsKeyArn = "KmsKeyArn"
        case organizationId = "OrganizationId"
        case roleArn = "RoleArn"
        case s3BucketName = "S3BucketName"
        case s3Prefix = "S3Prefix"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientToken = clientToken {
            try encodeContainer.encode(clientToken, forKey: .clientToken)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let entityId = entityId {
            try encodeContainer.encode(entityId, forKey: .entityId)
        }
        if let kmsKeyArn = kmsKeyArn {
            try encodeContainer.encode(kmsKeyArn, forKey: .kmsKeyArn)
        }
        if let organizationId = organizationId {
            try encodeContainer.encode(organizationId, forKey: .organizationId)
        }
        if let roleArn = roleArn {
            try encodeContainer.encode(roleArn, forKey: .roleArn)
        }
        if let s3BucketName = s3BucketName {
            try encodeContainer.encode(s3BucketName, forKey: .s3BucketName)
        }
        if let s3Prefix = s3Prefix {
            try encodeContainer.encode(s3Prefix, forKey: .s3Prefix)
        }
    }
}