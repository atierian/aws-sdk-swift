// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Details of a reserved Elasticsearch instance.</p>
public struct ReservedElasticsearchInstance: Equatable {
    /// <p>The currency code for the reserved Elasticsearch instance offering.</p>
    public let currencyCode: String?
    /// <p>The duration, in seconds, for which the Elasticsearch instance is reserved.</p>
    public let duration: Int
    /// <p>The number of Elasticsearch instances that have been reserved.</p>
    public let elasticsearchInstanceCount: Int
    /// <p>The Elasticsearch instance type offered by the reserved instance offering.</p>
    public let elasticsearchInstanceType: ESPartitionInstanceType?
    /// <p>The upfront fixed charge you will paid to purchase the specific reserved Elasticsearch instance offering. </p>
    public let fixedPrice: Double?
    /// <p>The payment option as defined in the reserved Elasticsearch instance offering.</p>
    public let paymentOption: ReservedElasticsearchInstancePaymentOption?
    /// <p>The charge to your account regardless of whether you are creating any domains using the instance offering.</p>
    public let recurringCharges: [RecurringCharge]?
    /// <p>The customer-specified identifier to track this reservation.</p>
    public let reservationName: String?
    /// <p>The unique identifier for the reservation.</p>
    public let reservedElasticsearchInstanceId: String?
    /// <p>The offering identifier.</p>
    public let reservedElasticsearchInstanceOfferingId: String?
    /// <p>The time the reservation started.</p>
    public let startTime: Date?
    /// <p>The state of the reserved Elasticsearch instance.</p>
    public let state: String?
    /// <p>The rate you are charged for each hour for the domain that is using this reserved instance.</p>
    public let usagePrice: Double?

    public init (
        currencyCode: String? = nil,
        duration: Int = 0,
        elasticsearchInstanceCount: Int = 0,
        elasticsearchInstanceType: ESPartitionInstanceType? = nil,
        fixedPrice: Double? = nil,
        paymentOption: ReservedElasticsearchInstancePaymentOption? = nil,
        recurringCharges: [RecurringCharge]? = nil,
        reservationName: String? = nil,
        reservedElasticsearchInstanceId: String? = nil,
        reservedElasticsearchInstanceOfferingId: String? = nil,
        startTime: Date? = nil,
        state: String? = nil,
        usagePrice: Double? = nil
    )
    {
        self.currencyCode = currencyCode
        self.duration = duration
        self.elasticsearchInstanceCount = elasticsearchInstanceCount
        self.elasticsearchInstanceType = elasticsearchInstanceType
        self.fixedPrice = fixedPrice
        self.paymentOption = paymentOption
        self.recurringCharges = recurringCharges
        self.reservationName = reservationName
        self.reservedElasticsearchInstanceId = reservedElasticsearchInstanceId
        self.reservedElasticsearchInstanceOfferingId = reservedElasticsearchInstanceOfferingId
        self.startTime = startTime
        self.state = state
        self.usagePrice = usagePrice
    }
}

extension ReservedElasticsearchInstance: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReservedElasticsearchInstance(currencyCode: \(String(describing: currencyCode)), duration: \(String(describing: duration)), elasticsearchInstanceCount: \(String(describing: elasticsearchInstanceCount)), elasticsearchInstanceType: \(String(describing: elasticsearchInstanceType)), fixedPrice: \(String(describing: fixedPrice)), paymentOption: \(String(describing: paymentOption)), recurringCharges: \(String(describing: recurringCharges)), reservationName: \(String(describing: reservationName)), reservedElasticsearchInstanceId: \(String(describing: reservedElasticsearchInstanceId)), reservedElasticsearchInstanceOfferingId: \(String(describing: reservedElasticsearchInstanceOfferingId)), startTime: \(String(describing: startTime)), state: \(String(describing: state)), usagePrice: \(String(describing: usagePrice)))"}
}