// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Information about the result of a document review request.</p>
public struct ReviewInformation: Equatable {
    /// <p>The time that the reviewer took action on the document review request.</p>
    public let reviewedTime: Date?
    /// <p>The reviewer assigned to take action on the document review request.</p>
    public let reviewer: String?
    /// <p>The current status of the document review request.</p>
    public let status: ReviewStatus?

    public init (
        reviewedTime: Date? = nil,
        reviewer: String? = nil,
        status: ReviewStatus? = nil
    )
    {
        self.reviewedTime = reviewedTime
        self.reviewer = reviewer
        self.status = status
    }
}

extension ReviewInformation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReviewInformation(reviewedTime: \(String(describing: reviewedTime)), reviewer: \(String(describing: reviewer)), status: \(String(describing: status)))"}
}