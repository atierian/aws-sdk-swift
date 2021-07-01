// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct MergePullRequestByThreeWayInputHeadersMiddleware: Middleware {
    public let id: String = "MergePullRequestByThreeWayInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<MergePullRequestByThreeWayInput>,
                  next: H) -> Swift.Result<OperationOutput<MergePullRequestByThreeWayOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<MergePullRequestByThreeWayInput>
    public typealias MOutput = OperationOutput<MergePullRequestByThreeWayOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<MergePullRequestByThreeWayOutputError>
}

public struct MergePullRequestByThreeWayInputQueryItemMiddleware: Middleware {
    public let id: String = "MergePullRequestByThreeWayInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<MergePullRequestByThreeWayInput>,
                  next: H) -> Swift.Result<OperationOutput<MergePullRequestByThreeWayOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<MergePullRequestByThreeWayInput>
    public typealias MOutput = OperationOutput<MergePullRequestByThreeWayOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<MergePullRequestByThreeWayOutputError>
}

public struct MergePullRequestByThreeWayInputBodyMiddleware: Middleware {
    public let id: String = "MergePullRequestByThreeWayInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<MergePullRequestByThreeWayInput>,
                  next: H) -> Swift.Result<OperationOutput<MergePullRequestByThreeWayOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<MergePullRequestByThreeWayInput>
    public typealias MOutput = OperationOutput<MergePullRequestByThreeWayOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<MergePullRequestByThreeWayOutputError>
}

extension MergePullRequestByThreeWayInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case authorName
        case commitMessage
        case conflictDetailLevel
        case conflictResolution
        case conflictResolutionStrategy
        case email
        case keepEmptyFolders
        case pullRequestId
        case repositoryName
        case sourceCommitId
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let authorName = authorName {
            try encodeContainer.encode(authorName, forKey: .authorName)
        }
        if let commitMessage = commitMessage {
            try encodeContainer.encode(commitMessage, forKey: .commitMessage)
        }
        if let conflictDetailLevel = conflictDetailLevel {
            try encodeContainer.encode(conflictDetailLevel.rawValue, forKey: .conflictDetailLevel)
        }
        if let conflictResolution = conflictResolution {
            try encodeContainer.encode(conflictResolution, forKey: .conflictResolution)
        }
        if let conflictResolutionStrategy = conflictResolutionStrategy {
            try encodeContainer.encode(conflictResolutionStrategy.rawValue, forKey: .conflictResolutionStrategy)
        }
        if let email = email {
            try encodeContainer.encode(email, forKey: .email)
        }
        if keepEmptyFolders != false {
            try encodeContainer.encode(keepEmptyFolders, forKey: .keepEmptyFolders)
        }
        if let pullRequestId = pullRequestId {
            try encodeContainer.encode(pullRequestId, forKey: .pullRequestId)
        }
        if let repositoryName = repositoryName {
            try encodeContainer.encode(repositoryName, forKey: .repositoryName)
        }
        if let sourceCommitId = sourceCommitId {
            try encodeContainer.encode(sourceCommitId, forKey: .sourceCommitId)
        }
    }
}