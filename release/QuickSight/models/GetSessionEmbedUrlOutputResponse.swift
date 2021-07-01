// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetSessionEmbedUrlOutputResponse: Equatable {
    /// <p>A single-use URL that you can put into your server-side web page to embed your
    /// 			QuickSight session. This URL is valid for 5 minutes. The API operation provides the URL with an
    /// 			<code>auth_code</code> value that enables one (and only one) sign-on to a user session
    /// 			that is valid for 10 hours. </p>
    public let embedUrl: String?
    /// <p>The AWS request ID for this operation.</p>
    public let requestId: String?
    /// <p>The HTTP status of the request.</p>
    public let status: Int

    public init (
        embedUrl: String? = nil,
        requestId: String? = nil,
        status: Int = 0
    )
    {
        self.embedUrl = embedUrl
        self.requestId = requestId
        self.status = status
    }
}

extension GetSessionEmbedUrlOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSessionEmbedUrlOutputResponse(embedUrl: \(String(describing: embedUrl)), requestId: \(String(describing: requestId)), status: \(String(describing: status)))"}
}