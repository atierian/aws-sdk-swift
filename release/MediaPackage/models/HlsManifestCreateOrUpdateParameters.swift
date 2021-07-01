// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// A HTTP Live Streaming (HLS) manifest configuration.
public struct HlsManifestCreateOrUpdateParameters: Equatable {
    /// This setting controls how ad markers are included in the packaged OriginEndpoint.
    /// "NONE" will omit all SCTE-35 ad markers from the output.
    /// "PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad
    /// markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
    /// "SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35
    /// messages in the input source.
    /// "DATERANGE" inserts EXT-X-DATERANGE tags to signal ad and program transition events
    /// in HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value
    /// that is greater than 0.
    public let adMarkers: AdMarkers?
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
    /// The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created.
    public let id: String?
    /// When enabled, an I-Frame only stream will be included in the output.
    public let includeIframeOnlyStream: Bool
    /// An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint.
    public let manifestName: String?
    /// The HTTP Live Streaming (HLS) playlist type.
    /// When either "EVENT" or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE
    /// entry will be included in the media playlist.
    public let playlistType: PlaylistType?
    /// Time window (in seconds) contained in each parent manifest.
    public let playlistWindowSeconds: Int
    /// The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
    /// inserted into manifests. Additionally, when an interval is specified
    /// ID3Timed Metadata messages will be generated every 5 seconds using the
    /// ingest time of the content.
    /// If the interval is not specified, or set to 0, then
    /// no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no
    /// ID3Timed Metadata messages will be generated. Note that irrespective
    /// of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,
    /// it will be passed through to HLS output.
    public let programDateTimeIntervalSeconds: Int

    public init (
        adMarkers: AdMarkers? = nil,
        adTriggers: [__AdTriggersElement]? = nil,
        adsOnDeliveryRestrictions: AdsOnDeliveryRestrictions? = nil,
        id: String? = nil,
        includeIframeOnlyStream: Bool = false,
        manifestName: String? = nil,
        playlistType: PlaylistType? = nil,
        playlistWindowSeconds: Int = 0,
        programDateTimeIntervalSeconds: Int = 0
    )
    {
        self.adMarkers = adMarkers
        self.adTriggers = adTriggers
        self.adsOnDeliveryRestrictions = adsOnDeliveryRestrictions
        self.id = id
        self.includeIframeOnlyStream = includeIframeOnlyStream
        self.manifestName = manifestName
        self.playlistType = playlistType
        self.playlistWindowSeconds = playlistWindowSeconds
        self.programDateTimeIntervalSeconds = programDateTimeIntervalSeconds
    }
}

extension HlsManifestCreateOrUpdateParameters: CustomDebugStringConvertible {
    public var debugDescription: String {
        "HlsManifestCreateOrUpdateParameters(adMarkers: \(String(describing: adMarkers)), adTriggers: \(String(describing: adTriggers)), adsOnDeliveryRestrictions: \(String(describing: adsOnDeliveryRestrictions)), id: \(String(describing: id)), includeIframeOnlyStream: \(String(describing: includeIframeOnlyStream)), manifestName: \(String(describing: manifestName)), playlistType: \(String(describing: playlistType)), playlistWindowSeconds: \(String(describing: playlistWindowSeconds)), programDateTimeIntervalSeconds: \(String(describing: programDateTimeIntervalSeconds)))"}
}