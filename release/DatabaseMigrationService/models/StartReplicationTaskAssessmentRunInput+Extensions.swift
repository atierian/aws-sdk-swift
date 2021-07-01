// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartReplicationTaskAssessmentRunInputHeadersMiddleware: Middleware {
    public let id: String = "StartReplicationTaskAssessmentRunInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartReplicationTaskAssessmentRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StartReplicationTaskAssessmentRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartReplicationTaskAssessmentRunInput>
    public typealias MOutput = OperationOutput<StartReplicationTaskAssessmentRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartReplicationTaskAssessmentRunOutputError>
}

public struct StartReplicationTaskAssessmentRunInputQueryItemMiddleware: Middleware {
    public let id: String = "StartReplicationTaskAssessmentRunInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartReplicationTaskAssessmentRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StartReplicationTaskAssessmentRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartReplicationTaskAssessmentRunInput>
    public typealias MOutput = OperationOutput<StartReplicationTaskAssessmentRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartReplicationTaskAssessmentRunOutputError>
}

public struct StartReplicationTaskAssessmentRunInputBodyMiddleware: Middleware {
    public let id: String = "StartReplicationTaskAssessmentRunInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartReplicationTaskAssessmentRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StartReplicationTaskAssessmentRunOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StartReplicationTaskAssessmentRunInput>
    public typealias MOutput = OperationOutput<StartReplicationTaskAssessmentRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartReplicationTaskAssessmentRunOutputError>
}

extension StartReplicationTaskAssessmentRunInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case assessmentRunName = "AssessmentRunName"
        case exclude = "Exclude"
        case includeOnly = "IncludeOnly"
        case replicationTaskArn = "ReplicationTaskArn"
        case resultEncryptionMode = "ResultEncryptionMode"
        case resultKmsKeyArn = "ResultKmsKeyArn"
        case resultLocationBucket = "ResultLocationBucket"
        case resultLocationFolder = "ResultLocationFolder"
        case serviceAccessRoleArn = "ServiceAccessRoleArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let assessmentRunName = assessmentRunName {
            try encodeContainer.encode(assessmentRunName, forKey: .assessmentRunName)
        }
        if let exclude = exclude {
            var excludeContainer = encodeContainer.nestedUnkeyedContainer(forKey: .exclude)
            for excludetestlist0 in exclude {
                try excludeContainer.encode(excludetestlist0)
            }
        }
        if let includeOnly = includeOnly {
            var includeOnlyContainer = encodeContainer.nestedUnkeyedContainer(forKey: .includeOnly)
            for includetestlist0 in includeOnly {
                try includeOnlyContainer.encode(includetestlist0)
            }
        }
        if let replicationTaskArn = replicationTaskArn {
            try encodeContainer.encode(replicationTaskArn, forKey: .replicationTaskArn)
        }
        if let resultEncryptionMode = resultEncryptionMode {
            try encodeContainer.encode(resultEncryptionMode, forKey: .resultEncryptionMode)
        }
        if let resultKmsKeyArn = resultKmsKeyArn {
            try encodeContainer.encode(resultKmsKeyArn, forKey: .resultKmsKeyArn)
        }
        if let resultLocationBucket = resultLocationBucket {
            try encodeContainer.encode(resultLocationBucket, forKey: .resultLocationBucket)
        }
        if let resultLocationFolder = resultLocationFolder {
            try encodeContainer.encode(resultLocationFolder, forKey: .resultLocationFolder)
        }
        if let serviceAccessRoleArn = serviceAccessRoleArn {
            try encodeContainer.encode(serviceAccessRoleArn, forKey: .serviceAccessRoleArn)
        }
    }
}