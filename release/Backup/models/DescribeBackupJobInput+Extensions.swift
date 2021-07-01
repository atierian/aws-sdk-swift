// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeBackupJobInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeBackupJobInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeBackupJobInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeBackupJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeBackupJobInput>
    public typealias MOutput = OperationOutput<DescribeBackupJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeBackupJobOutputError>
}

public struct DescribeBackupJobInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeBackupJobInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeBackupJobInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeBackupJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeBackupJobInput>
    public typealias MOutput = OperationOutput<DescribeBackupJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeBackupJobOutputError>
}

extension DescribeBackupJobInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}