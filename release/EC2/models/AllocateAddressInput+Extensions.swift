// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AllocateAddressInputHeadersMiddleware: Middleware {
    public let id: String = "AllocateAddressInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AllocateAddressInput>,
                  next: H) -> Swift.Result<OperationOutput<AllocateAddressOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AllocateAddressInput>
    public typealias MOutput = OperationOutput<AllocateAddressOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AllocateAddressOutputError>
}

public struct AllocateAddressInputQueryItemMiddleware: Middleware {
    public let id: String = "AllocateAddressInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AllocateAddressInput>,
                  next: H) -> Swift.Result<OperationOutput<AllocateAddressOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AllocateAddressInput>
    public typealias MOutput = OperationOutput<AllocateAddressOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AllocateAddressOutputError>
}

public struct AllocateAddressInputBodyMiddleware: Middleware {
    public let id: String = "AllocateAddressInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AllocateAddressInput>,
                  next: H) -> Swift.Result<OperationOutput<AllocateAddressOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AllocateAddressInput>
    public typealias MOutput = OperationOutput<AllocateAddressOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AllocateAddressOutputError>
}

extension AllocateAddressInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let address = address {
            try container.encode(address, forKey: Key("Address"))
        }
        if let customerOwnedIpv4Pool = customerOwnedIpv4Pool {
            try container.encode(customerOwnedIpv4Pool, forKey: Key("CustomerOwnedIpv4Pool"))
        }
        if let domain = domain {
            try container.encode(domain, forKey: Key("Domain"))
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let networkBorderGroup = networkBorderGroup {
            try container.encode(networkBorderGroup, forKey: Key("NetworkBorderGroup"))
        }
        if let publicIpv4Pool = publicIpv4Pool {
            try container.encode(publicIpv4Pool, forKey: Key("PublicIpv4Pool"))
        }
        if let tagSpecifications = tagSpecifications {
            if !tagSpecifications.isEmpty {
                for (index0, tagspecification0) in tagSpecifications.enumerated() {
                    var tagSpecificationsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("TagSpecification.\(index0.advanced(by: 1))"))
                    try tagSpecificationsContainer0.encode(tagspecification0, forKey: Key(""))
                }
            }
        }
        try container.encode("AllocateAddress", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}