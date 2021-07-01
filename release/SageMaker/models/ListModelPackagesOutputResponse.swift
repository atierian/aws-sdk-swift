// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListModelPackagesOutputResponse: Equatable {
    /// <p>An array of <code>ModelPackageSummary</code> objects, each of which lists a model
    ///             package.</p>
    public let modelPackageSummaryList: [ModelPackageSummary]?
    /// <p>If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of
    ///             model packages, use it in the subsequent request.</p>
    public let nextToken: String?

    public init (
        modelPackageSummaryList: [ModelPackageSummary]? = nil,
        nextToken: String? = nil
    )
    {
        self.modelPackageSummaryList = modelPackageSummaryList
        self.nextToken = nextToken
    }
}

extension ListModelPackagesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListModelPackagesOutputResponse(modelPackageSummaryList: \(String(describing: modelPackageSummaryList)), nextToken: \(String(describing: nextToken)))"}
}