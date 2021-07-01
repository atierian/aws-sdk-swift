// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateInstancesInputHeadersMiddleware: Middleware {
    public let id: String = "CreateInstancesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateInstancesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateInstancesInput>
    public typealias MOutput = OperationOutput<CreateInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateInstancesOutputError>
}

public struct CreateInstancesInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateInstancesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateInstancesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateInstancesInput>
    public typealias MOutput = OperationOutput<CreateInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateInstancesOutputError>
}

public struct CreateInstancesInputBodyMiddleware: Middleware {
    public let id: String = "CreateInstancesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateInstancesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateInstancesInput>
    public typealias MOutput = OperationOutput<CreateInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateInstancesOutputError>
}

extension CreateInstancesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case addOns
        case availabilityZone
        case blueprintId
        case bundleId
        case customImageName
        case instanceNames
        case ipAddressType
        case keyPairName
        case tags
        case userData
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let addOns = addOns {
            var addOnsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .addOns)
            for addonrequestlist0 in addOns {
                try addOnsContainer.encode(addonrequestlist0)
            }
        }
        if let availabilityZone = availabilityZone {
            try encodeContainer.encode(availabilityZone, forKey: .availabilityZone)
        }
        if let blueprintId = blueprintId {
            try encodeContainer.encode(blueprintId, forKey: .blueprintId)
        }
        if let bundleId = bundleId {
            try encodeContainer.encode(bundleId, forKey: .bundleId)
        }
        if let customImageName = customImageName {
            try encodeContainer.encode(customImageName, forKey: .customImageName)
        }
        if let instanceNames = instanceNames {
            var instanceNamesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .instanceNames)
            for stringlist0 in instanceNames {
                try instanceNamesContainer.encode(stringlist0)
            }
        }
        if let ipAddressType = ipAddressType {
            try encodeContainer.encode(ipAddressType.rawValue, forKey: .ipAddressType)
        }
        if let keyPairName = keyPairName {
            try encodeContainer.encode(keyPairName, forKey: .keyPairName)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
        if let userData = userData {
            try encodeContainer.encode(userData, forKey: .userData)
        }
    }
}