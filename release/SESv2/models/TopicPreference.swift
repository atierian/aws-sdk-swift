// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The contact's preference for being opted-in to or opted-out of a topic.</p>
public struct TopicPreference: Equatable {
    /// <p>The contact's subscription status to a topic which is either <code>OPT_IN</code> or
    ///                 <code>OPT_OUT</code>.</p>
    public let subscriptionStatus: SubscriptionStatus?
    /// <p>The name of the topic.</p>
    public let topicName: String?

    public init (
        subscriptionStatus: SubscriptionStatus? = nil,
        topicName: String? = nil
    )
    {
        self.subscriptionStatus = subscriptionStatus
        self.topicName = topicName
    }
}

extension TopicPreference: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TopicPreference(subscriptionStatus: \(String(describing: subscriptionStatus)), topicName: \(String(describing: topicName)))"}
}