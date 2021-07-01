// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeWorkspaceImagesOutputResponse: Equatable {
    /// <p>Information about the images.</p>
    public let images: [WorkspaceImage]?
    /// <p>The token to use to retrieve the next page of results. This value is null when there are no more results to return. </p>
    public let nextToken: String?

    public init (
        images: [WorkspaceImage]? = nil,
        nextToken: String? = nil
    )
    {
        self.images = images
        self.nextToken = nextToken
    }
}

extension DescribeWorkspaceImagesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeWorkspaceImagesOutputResponse(images: \(String(describing: images)), nextToken: \(String(describing: nextToken)))"}
}