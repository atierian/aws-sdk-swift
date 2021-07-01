// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeCertificateAuthorityAuditReportInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeCertificateAuthorityAuditReportInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeCertificateAuthorityAuditReportInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeCertificateAuthorityAuditReportOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeCertificateAuthorityAuditReportInput>
    public typealias MOutput = OperationOutput<DescribeCertificateAuthorityAuditReportOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeCertificateAuthorityAuditReportOutputError>
}

public struct DescribeCertificateAuthorityAuditReportInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeCertificateAuthorityAuditReportInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeCertificateAuthorityAuditReportInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeCertificateAuthorityAuditReportOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeCertificateAuthorityAuditReportInput>
    public typealias MOutput = OperationOutput<DescribeCertificateAuthorityAuditReportOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeCertificateAuthorityAuditReportOutputError>
}

public struct DescribeCertificateAuthorityAuditReportInputBodyMiddleware: Middleware {
    public let id: String = "DescribeCertificateAuthorityAuditReportInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeCertificateAuthorityAuditReportInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeCertificateAuthorityAuditReportOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeCertificateAuthorityAuditReportInput>
    public typealias MOutput = OperationOutput<DescribeCertificateAuthorityAuditReportOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeCertificateAuthorityAuditReportOutputError>
}

extension DescribeCertificateAuthorityAuditReportInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case auditReportId = "AuditReportId"
        case certificateAuthorityArn = "CertificateAuthorityArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let auditReportId = auditReportId {
            try encodeContainer.encode(auditReportId, forKey: .auditReportId)
        }
        if let certificateAuthorityArn = certificateAuthorityArn {
            try encodeContainer.encode(certificateAuthorityArn, forKey: .certificateAuthorityArn)
        }
    }
}