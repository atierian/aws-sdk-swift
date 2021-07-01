// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateFleetInputHeadersMiddleware: Middleware {
    public let id: String = "CreateFleetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateFleetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateFleetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateFleetInput>
    public typealias MOutput = OperationOutput<CreateFleetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateFleetOutputError>
}

public struct CreateFleetInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateFleetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateFleetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateFleetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateFleetInput>
    public typealias MOutput = OperationOutput<CreateFleetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateFleetOutputError>
}

public struct CreateFleetInputBodyMiddleware: Middleware {
    public let id: String = "CreateFleetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateFleetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateFleetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateFleetInput>
    public typealias MOutput = OperationOutput<CreateFleetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateFleetOutputError>
}

extension CreateFleetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case buildId = "BuildId"
        case certificateConfiguration = "CertificateConfiguration"
        case description = "Description"
        case eC2InboundPermissions = "EC2InboundPermissions"
        case eC2InstanceType = "EC2InstanceType"
        case fleetType = "FleetType"
        case instanceRoleArn = "InstanceRoleArn"
        case locations = "Locations"
        case logPaths = "LogPaths"
        case metricGroups = "MetricGroups"
        case name = "Name"
        case newGameSessionProtectionPolicy = "NewGameSessionProtectionPolicy"
        case peerVpcAwsAccountId = "PeerVpcAwsAccountId"
        case peerVpcId = "PeerVpcId"
        case resourceCreationLimitPolicy = "ResourceCreationLimitPolicy"
        case runtimeConfiguration = "RuntimeConfiguration"
        case scriptId = "ScriptId"
        case serverLaunchParameters = "ServerLaunchParameters"
        case serverLaunchPath = "ServerLaunchPath"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let buildId = buildId {
            try encodeContainer.encode(buildId, forKey: .buildId)
        }
        if let certificateConfiguration = certificateConfiguration {
            try encodeContainer.encode(certificateConfiguration, forKey: .certificateConfiguration)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let eC2InboundPermissions = eC2InboundPermissions {
            var eC2InboundPermissionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .eC2InboundPermissions)
            for ippermissionslist0 in eC2InboundPermissions {
                try eC2InboundPermissionsContainer.encode(ippermissionslist0)
            }
        }
        if let eC2InstanceType = eC2InstanceType {
            try encodeContainer.encode(eC2InstanceType.rawValue, forKey: .eC2InstanceType)
        }
        if let fleetType = fleetType {
            try encodeContainer.encode(fleetType.rawValue, forKey: .fleetType)
        }
        if let instanceRoleArn = instanceRoleArn {
            try encodeContainer.encode(instanceRoleArn, forKey: .instanceRoleArn)
        }
        if let locations = locations {
            var locationsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .locations)
            for locationconfigurationlist0 in locations {
                try locationsContainer.encode(locationconfigurationlist0)
            }
        }
        if let logPaths = logPaths {
            var logPathsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .logPaths)
            for stringlist0 in logPaths {
                try logPathsContainer.encode(stringlist0)
            }
        }
        if let metricGroups = metricGroups {
            var metricGroupsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .metricGroups)
            for metricgrouplist0 in metricGroups {
                try metricGroupsContainer.encode(metricgrouplist0)
            }
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let newGameSessionProtectionPolicy = newGameSessionProtectionPolicy {
            try encodeContainer.encode(newGameSessionProtectionPolicy.rawValue, forKey: .newGameSessionProtectionPolicy)
        }
        if let peerVpcAwsAccountId = peerVpcAwsAccountId {
            try encodeContainer.encode(peerVpcAwsAccountId, forKey: .peerVpcAwsAccountId)
        }
        if let peerVpcId = peerVpcId {
            try encodeContainer.encode(peerVpcId, forKey: .peerVpcId)
        }
        if let resourceCreationLimitPolicy = resourceCreationLimitPolicy {
            try encodeContainer.encode(resourceCreationLimitPolicy, forKey: .resourceCreationLimitPolicy)
        }
        if let runtimeConfiguration = runtimeConfiguration {
            try encodeContainer.encode(runtimeConfiguration, forKey: .runtimeConfiguration)
        }
        if let scriptId = scriptId {
            try encodeContainer.encode(scriptId, forKey: .scriptId)
        }
        if let serverLaunchParameters = serverLaunchParameters {
            try encodeContainer.encode(serverLaunchParameters, forKey: .serverLaunchParameters)
        }
        if let serverLaunchPath = serverLaunchPath {
            try encodeContainer.encode(serverLaunchPath, forKey: .serverLaunchPath)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
    }
}