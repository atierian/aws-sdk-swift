// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation

public class ApiGatewayManagementApiClient {
    let client: SdkHttpClient
    let config: ApiGatewayManagementApiClientConfiguration
    let serviceName = "ApiGatewayManagementApi"
    let encoder: RequestEncoder
    let decoder: ResponseDecoder

    public init(config: ApiGatewayManagementApiClientConfiguration) {
        client = SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public class ApiGatewayManagementApiClientConfiguration: ClientRuntime.Configuration, AWSClientConfiguration {

        public var region: String
        public var credentialsProvider: AWSCredentialsProvider
        public var signingRegion: String
        public var endpointResolver: EndpointResolver

        public init (
            credentialsProvider: AWSCredentialsProvider,
            endpointResolver: EndpointResolver,
            region: String,
            signingRegion: String
        ) throws
        {
            self.credentialsProvider = credentialsProvider
            self.endpointResolver = endpointResolver
            self.region = region
            self.signingRegion = signingRegion
        }

        public convenience init(credentialsProvider: AWSCredentialsProvider) throws {
            let region = "us-east-1"
            let signingRegion = "us-east-1"
            let endpointResolver = DefaultEndpointResolver()
            try self.init(
                credentialsProvider: credentialsProvider,
                endpointResolver: endpointResolver,
                region: region,
                signingRegion: signingRegion
            )
        }

        public static func `default`() throws -> ApiGatewayManagementApiClientConfiguration {
            let awsCredsProvider = try AWSCredentialsProvider.fromEnv()
            return try ApiGatewayManagementApiClientConfiguration(credentialsProvider: awsCredsProvider)
        }
    }
}

extension ApiGatewayManagementApiClient: ApiGatewayManagementApiClientProtocol {
    /// <p>Delete the connection with the provided id.</p>
    public func deleteConnection(input: DeleteConnectionInput, completion: @escaping (SdkResult<DeleteConnectionOutputResponse, DeleteConnectionOutputError>) -> Void)
    {
        guard let connectionId = input.connectionId else {
            completion(.failure(.client(ClientError.serializationFailed("uri component connectionId unexpectedly nil"))))
            return
        }
        let urlPath = "/@connections/\(connectionId)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteConnection")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "execute-api.\(config.region).amazonaws.com")
                      .withSigningName(value: "execute-api")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DeleteConnectionInput, DeleteConnectionOutputResponse, DeleteConnectionOutputError>(id: "deleteConnection")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DeleteConnectionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DeleteConnectionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DeleteConnectionInput, DeleteConnectionOutputResponse, DeleteConnectionOutputError>(contentType: "application/json"))
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Get information about the connection with the provided id.</p>
    public func getConnection(input: GetConnectionInput, completion: @escaping (SdkResult<GetConnectionOutputResponse, GetConnectionOutputError>) -> Void)
    {
        guard let connectionId = input.connectionId else {
            completion(.failure(.client(ClientError.serializationFailed("uri component connectionId unexpectedly nil"))))
            return
        }
        let urlPath = "/@connections/\(connectionId)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getConnection")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "execute-api.\(config.region).amazonaws.com")
                      .withSigningName(value: "execute-api")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GetConnectionInput, GetConnectionOutputResponse, GetConnectionOutputError>(id: "getConnection")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GetConnectionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GetConnectionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GetConnectionInput, GetConnectionOutputResponse, GetConnectionOutputError>(contentType: "application/json"))
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Sends the provided data to the specified connection.</p>
    public func postToConnection(input: PostToConnectionInput, completion: @escaping (SdkResult<PostToConnectionOutputResponse, PostToConnectionOutputError>) -> Void)
    {
        guard let connectionId = input.connectionId else {
            completion(.failure(.client(ClientError.serializationFailed("uri component connectionId unexpectedly nil"))))
            return
        }
        let urlPath = "/@connections/\(connectionId)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "postToConnection")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "execute-api.\(config.region).amazonaws.com")
                      .withSigningName(value: "execute-api")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<PostToConnectionInput, PostToConnectionOutputResponse, PostToConnectionOutputError>(id: "postToConnection")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: PostToConnectionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: PostToConnectionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<PostToConnectionInput, PostToConnectionOutputResponse, PostToConnectionOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: PostToConnectionInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}