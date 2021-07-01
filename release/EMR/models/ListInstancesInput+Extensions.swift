// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListInstancesInputHeadersMiddleware: Middleware {
    public let id: String = "ListInstancesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListInstancesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListInstancesInput>
    public typealias MOutput = OperationOutput<ListInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListInstancesOutputError>
}

public struct ListInstancesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListInstancesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListInstancesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListInstancesInput>
    public typealias MOutput = OperationOutput<ListInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListInstancesOutputError>
}

public struct ListInstancesInputBodyMiddleware: Middleware {
    public let id: String = "ListInstancesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListInstancesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListInstancesInput>
    public typealias MOutput = OperationOutput<ListInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListInstancesOutputError>
}

extension ListInstancesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clusterId = "ClusterId"
        case instanceFleetId = "InstanceFleetId"
        case instanceFleetType = "InstanceFleetType"
        case instanceGroupId = "InstanceGroupId"
        case instanceGroupTypes = "InstanceGroupTypes"
        case instanceStates = "InstanceStates"
        case marker = "Marker"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clusterId = clusterId {
            try encodeContainer.encode(clusterId, forKey: .clusterId)
        }
        if let instanceFleetId = instanceFleetId {
            try encodeContainer.encode(instanceFleetId, forKey: .instanceFleetId)
        }
        if let instanceFleetType = instanceFleetType {
            try encodeContainer.encode(instanceFleetType.rawValue, forKey: .instanceFleetType)
        }
        if let instanceGroupId = instanceGroupId {
            try encodeContainer.encode(instanceGroupId, forKey: .instanceGroupId)
        }
        if let instanceGroupTypes = instanceGroupTypes {
            var instanceGroupTypesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .instanceGroupTypes)
            for instancegrouptypelist0 in instanceGroupTypes {
                try instanceGroupTypesContainer.encode(instancegrouptypelist0.rawValue)
            }
        }
        if let instanceStates = instanceStates {
            var instanceStatesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .instanceStates)
            for instancestatelist0 in instanceStates {
                try instanceStatesContainer.encode(instancestatelist0.rawValue)
            }
        }
        if let marker = marker {
            try encodeContainer.encode(marker, forKey: .marker)
        }
    }
}