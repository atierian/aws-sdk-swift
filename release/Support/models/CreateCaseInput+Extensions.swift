// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateCaseInputHeadersMiddleware: Middleware {
    public let id: String = "CreateCaseInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateCaseInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateCaseOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateCaseInput>
    public typealias MOutput = OperationOutput<CreateCaseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateCaseOutputError>
}

public struct CreateCaseInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateCaseInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateCaseInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateCaseOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateCaseInput>
    public typealias MOutput = OperationOutput<CreateCaseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateCaseOutputError>
}

public struct CreateCaseInputBodyMiddleware: Middleware {
    public let id: String = "CreateCaseInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateCaseInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateCaseOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateCaseInput>
    public typealias MOutput = OperationOutput<CreateCaseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateCaseOutputError>
}

extension CreateCaseInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case attachmentSetId
        case categoryCode
        case ccEmailAddresses
        case communicationBody
        case issueType
        case language
        case serviceCode
        case severityCode
        case subject
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let attachmentSetId = attachmentSetId {
            try encodeContainer.encode(attachmentSetId, forKey: .attachmentSetId)
        }
        if let categoryCode = categoryCode {
            try encodeContainer.encode(categoryCode, forKey: .categoryCode)
        }
        if let ccEmailAddresses = ccEmailAddresses {
            var ccEmailAddressesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .ccEmailAddresses)
            for ccemailaddresslist0 in ccEmailAddresses {
                try ccEmailAddressesContainer.encode(ccemailaddresslist0)
            }
        }
        if let communicationBody = communicationBody {
            try encodeContainer.encode(communicationBody, forKey: .communicationBody)
        }
        if let issueType = issueType {
            try encodeContainer.encode(issueType, forKey: .issueType)
        }
        if let language = language {
            try encodeContainer.encode(language, forKey: .language)
        }
        if let serviceCode = serviceCode {
            try encodeContainer.encode(serviceCode, forKey: .serviceCode)
        }
        if let severityCode = severityCode {
            try encodeContainer.encode(severityCode, forKey: .severityCode)
        }
        if let subject = subject {
            try encodeContainer.encode(subject, forKey: .subject)
        }
    }
}