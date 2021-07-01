// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation

public class ConnectContactLensClient {
    let client: SdkHttpClient
    let config: ConnectContactLensClientConfiguration
    let serviceName = "Connect Contact Lens"
    let encoder: RequestEncoder
    let decoder: ResponseDecoder

    public init(config: ConnectContactLensClientConfiguration) {
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

    public class ConnectContactLensClientConfiguration: ClientRuntime.Configuration, AWSClientConfiguration {

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

        public static func `default`() throws -> ConnectContactLensClientConfiguration {
            let awsCredsProvider = try AWSCredentialsProvider.fromEnv()
            return try ConnectContactLensClientConfiguration(credentialsProvider: awsCredsProvider)
        }
    }
}

extension ConnectContactLensClient: ConnectContactLensClientProtocol {
    /// <p>Provides a list of analysis segments for a real-time analysis session.</p>
    public func listRealtimeContactAnalysisSegments(input: ListRealtimeContactAnalysisSegmentsInput, completion: @escaping (SdkResult<ListRealtimeContactAnalysisSegmentsOutputResponse, ListRealtimeContactAnalysisSegmentsOutputError>) -> Void)
    {
        let urlPath = "/realtime-contact-analysis/analysis-segments"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listRealtimeContactAnalysisSegments")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "contact-lens.\(config.region).amazonaws.com")
                      .withSigningName(value: "connect")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<ListRealtimeContactAnalysisSegmentsInput, ListRealtimeContactAnalysisSegmentsOutputResponse, ListRealtimeContactAnalysisSegmentsOutputError>(id: "listRealtimeContactAnalysisSegments")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: ListRealtimeContactAnalysisSegmentsInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ListRealtimeContactAnalysisSegmentsInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<ListRealtimeContactAnalysisSegmentsInput, ListRealtimeContactAnalysisSegmentsOutputResponse, ListRealtimeContactAnalysisSegmentsOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: ListRealtimeContactAnalysisSegmentsInputBodyMiddleware())
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