// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateVpcEndpointInputHeadersMiddleware: Middleware {
    public let id: String = "CreateVpcEndpointInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateVpcEndpointInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateVpcEndpointOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateVpcEndpointInput>
    public typealias MOutput = OperationOutput<CreateVpcEndpointOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateVpcEndpointOutputError>
}

public struct CreateVpcEndpointInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateVpcEndpointInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateVpcEndpointInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateVpcEndpointOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateVpcEndpointInput>
    public typealias MOutput = OperationOutput<CreateVpcEndpointOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateVpcEndpointOutputError>
}

public struct CreateVpcEndpointInputBodyMiddleware: Middleware {
    public let id: String = "CreateVpcEndpointInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateVpcEndpointInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateVpcEndpointOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateVpcEndpointInput>
    public typealias MOutput = OperationOutput<CreateVpcEndpointOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateVpcEndpointOutputError>
}

extension CreateVpcEndpointInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let clientToken = clientToken {
            try container.encode(clientToken, forKey: Key("ClientToken"))
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let policyDocument = policyDocument {
            try container.encode(policyDocument, forKey: Key("PolicyDocument"))
        }
        if privateDnsEnabled != false {
            try container.encode(privateDnsEnabled, forKey: Key("PrivateDnsEnabled"))
        }
        if let routeTableIds = routeTableIds {
            if !routeTableIds.isEmpty {
                for (index0, routetableid0) in routeTableIds.enumerated() {
                    var routeTableIdsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("RouteTableId.\(index0.advanced(by: 1))"))
                    try routeTableIdsContainer0.encode(routetableid0, forKey: Key(""))
                }
            }
        }
        if let securityGroupIds = securityGroupIds {
            if !securityGroupIds.isEmpty {
                for (index0, securitygroupid0) in securityGroupIds.enumerated() {
                    var securityGroupIdsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("SecurityGroupId.\(index0.advanced(by: 1))"))
                    try securityGroupIdsContainer0.encode(securitygroupid0, forKey: Key(""))
                }
            }
        }
        if let serviceName = serviceName {
            try container.encode(serviceName, forKey: Key("ServiceName"))
        }
        if let subnetIds = subnetIds {
            if !subnetIds.isEmpty {
                for (index0, subnetid0) in subnetIds.enumerated() {
                    var subnetIdsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("SubnetId.\(index0.advanced(by: 1))"))
                    try subnetIdsContainer0.encode(subnetid0, forKey: Key(""))
                }
            }
        }
        if let tagSpecifications = tagSpecifications {
            if !tagSpecifications.isEmpty {
                for (index0, tagspecification0) in tagSpecifications.enumerated() {
                    var tagSpecificationsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("TagSpecification.\(index0.advanced(by: 1))"))
                    try tagSpecificationsContainer0.encode(tagspecification0, forKey: Key(""))
                }
            }
        }
        if let vpcEndpointType = vpcEndpointType {
            try container.encode(vpcEndpointType, forKey: Key("VpcEndpointType"))
        }
        if let vpcId = vpcId {
            try container.encode(vpcId, forKey: Key("VpcId"))
        }
        try container.encode("CreateVpcEndpoint", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}