// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PostCommentReplyOutputResponse: Equatable {
    /// <p>Information about the reply to a comment.</p>
    public let comment: Comment?

    public init (
        comment: Comment? = nil
    )
    {
        self.comment = comment
    }
}

extension PostCommentReplyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PostCommentReplyOutputResponse(comment: \(String(describing: comment)))"}
}