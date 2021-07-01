// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
public struct DashPackage: Equatable {
    /// A list of SCTE-35 message types that are treated as ad markers in the output.  If empty, no
    /// ad markers are output.  Specify multiple items to create ad markers for all of the included
    /// message types.
    public let adTriggers: [__AdTriggersElement]?
    /// This setting allows the delivery restriction flags on SCTE-35 segmentation descriptors to
    /// determine whether a message signals an ad.  Choosing "NONE" means no SCTE-35 messages become
    /// ads.  Choosing "RESTRICTED" means SCTE-35 messages of the types specified in AdTriggers that
    /// contain delivery restrictions will be treated as ads.  Choosing "UNRESTRICTED" means SCTE-35
    /// messages of the types specified in AdTriggers that do not contain delivery restrictions will
    /// be treated as ads.  Choosing "BOTH" means all SCTE-35 messages of the types specified in
    /// AdTriggers will be treated as ads.  Note that Splice Insert messages do not have these flags
    /// and are always treated as ads if specified in AdTriggers.
    public let adsOnDeliveryRestrictions: AdsOnDeliveryRestrictions?
    /// A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.
    public let encryption: DashEncryption?
    /// Determines the position of some tags in the Media Presentation Description (MPD).  When set to FULL, elements like SegmentTemplate and ContentProtection are included in each Representation.  When set to COMPACT, duplicate elements are combined and presented at the AdaptationSet level.
    public let manifestLayout: ManifestLayout?
    /// Time window (in seconds) contained in each manifest.
    public let manifestWindowSeconds: Int
    /// Minimum duration (in seconds) that a player will buffer media before starting the presentation.
    public let minBufferTimeSeconds: Int
    /// Minimum duration (in seconds) between potential changes to the Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation Description (MPD).
    public let minUpdatePeriodSeconds: Int
    /// A list of triggers that controls when the outgoing Dynamic Adaptive Streaming over HTTP (DASH)
    /// Media Presentation Description (MPD) will be partitioned into multiple periods. If empty, the content will not
    /// be partitioned into more than one period. If the list contains "ADS", new periods will be created where
    /// the Channel source contains SCTE-35 ad markers.
    public let periodTriggers: [__PeriodTriggersElement]?
    /// The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to "HBBTV_1_5", HbbTV 1.5 compliant output is enabled.
    public let profile: Profile?
    /// Duration (in seconds) of each segment. Actual segments will be
    /// rounded to the nearest multiple of the source segment duration.
    public let segmentDurationSeconds: Int
    /// Determines the type of SegmentTemplate included in the Media Presentation Description (MPD).  When set to NUMBER_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Number$ media URLs.  When set to TIME_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Time$ media URLs. When set to NUMBER_WITH_DURATION, only a duration is included in each SegmentTemplate, with $Number$ media URLs.
    public let segmentTemplateFormat: SegmentTemplateFormat?
    /// A StreamSelection configuration.
    public let streamSelection: StreamSelection?
    /// Duration (in seconds) to delay live content before presentation.
    public let suggestedPresentationDelaySeconds: Int
    /// Determines the type of UTCTiming included in the Media Presentation Description (MPD)
    public let utcTiming: UtcTiming?
    /// Specifies the value attribute of the UTCTiming field when utcTiming is set to HTTP-ISO or HTTP-HEAD
    public let utcTimingUri: String?

    public init (
        adTriggers: [__AdTriggersElement]? = nil,
        adsOnDeliveryRestrictions: AdsOnDeliveryRestrictions? = nil,
        encryption: DashEncryption? = nil,
        manifestLayout: ManifestLayout? = nil,
        manifestWindowSeconds: Int = 0,
        minBufferTimeSeconds: Int = 0,
        minUpdatePeriodSeconds: Int = 0,
        periodTriggers: [__PeriodTriggersElement]? = nil,
        profile: Profile? = nil,
        segmentDurationSeconds: Int = 0,
        segmentTemplateFormat: SegmentTemplateFormat? = nil,
        streamSelection: StreamSelection? = nil,
        suggestedPresentationDelaySeconds: Int = 0,
        utcTiming: UtcTiming? = nil,
        utcTimingUri: String? = nil
    )
    {
        self.adTriggers = adTriggers
        self.adsOnDeliveryRestrictions = adsOnDeliveryRestrictions
        self.encryption = encryption
        self.manifestLayout = manifestLayout
        self.manifestWindowSeconds = manifestWindowSeconds
        self.minBufferTimeSeconds = minBufferTimeSeconds
        self.minUpdatePeriodSeconds = minUpdatePeriodSeconds
        self.periodTriggers = periodTriggers
        self.profile = profile
        self.segmentDurationSeconds = segmentDurationSeconds
        self.segmentTemplateFormat = segmentTemplateFormat
        self.streamSelection = streamSelection
        self.suggestedPresentationDelaySeconds = suggestedPresentationDelaySeconds
        self.utcTiming = utcTiming
        self.utcTimingUri = utcTimingUri
    }
}

extension DashPackage: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DashPackage(adTriggers: \(String(describing: adTriggers)), adsOnDeliveryRestrictions: \(String(describing: adsOnDeliveryRestrictions)), encryption: \(String(describing: encryption)), manifestLayout: \(String(describing: manifestLayout)), manifestWindowSeconds: \(String(describing: manifestWindowSeconds)), minBufferTimeSeconds: \(String(describing: minBufferTimeSeconds)), minUpdatePeriodSeconds: \(String(describing: minUpdatePeriodSeconds)), periodTriggers: \(String(describing: periodTriggers)), profile: \(String(describing: profile)), segmentDurationSeconds: \(String(describing: segmentDurationSeconds)), segmentTemplateFormat: \(String(describing: segmentTemplateFormat)), streamSelection: \(String(describing: streamSelection)), suggestedPresentationDelaySeconds: \(String(describing: suggestedPresentationDelaySeconds)), utcTiming: \(String(describing: utcTiming)), utcTimingUri: \(String(describing: utcTimingUri)))"}
}