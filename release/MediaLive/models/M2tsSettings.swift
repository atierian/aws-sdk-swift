// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// M2ts Settings
public struct M2tsSettings: Equatable {
    /// When set to drop, output audio streams will be removed from the program if the selected input audio stream is removed from the input. This allows the output audio configuration to dynamically change based on input configuration. If this is set to encodeSilence, all output audio streams will output encoded silence when not connected to an active input stream.
    public let absentInputAudioBehavior: M2tsAbsentInputAudioBehavior?
    /// When set to enabled, uses ARIB-compliant field muxing and removes video descriptor.
    public let arib: M2tsArib?
    /// Packet Identifier (PID) for ARIB Captions in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    public let aribCaptionsPid: String?
    /// If set to auto, pid number used for ARIB Captions will be auto-selected from unused pids.  If set to useConfigured, ARIB Captions will be on the configured pid number.
    public let aribCaptionsPidControl: M2tsAribCaptionsPidControl?
    /// When set to dvb, uses DVB buffer model for Dolby Digital audio.  When set to atsc, the ATSC model is used.
    public let audioBufferModel: M2tsAudioBufferModel?
    /// The number of audio frames to insert for each PES packet.
    public let audioFramesPerPes: Int
    /// Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values. Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
    public let audioPids: String?
    /// When set to atsc, uses stream type = 0x81 for AC3 and stream type = 0x87 for EAC3. When set to dvb, uses stream type = 0x06.
    public let audioStreamType: M2tsAudioStreamType?
    /// The output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate.
    public let bitrate: Int
    /// Controls the timing accuracy for output network traffic. Leave as MULTIPLEX to ensure accurate network packet timing. Or set to NONE, which might result in lower latency but will result in more variability in output network packet timing. This variability might cause interruptions, jitter, or bursty behavior in your playback or receiving devices.
    public let bufferModel: M2tsBufferModel?
    /// When set to enabled, generates captionServiceDescriptor in PMT.
    public let ccDescriptor: M2tsCcDescriptor?
    /// Inserts DVB Network Information Table (NIT) at the specified table repetition interval.
    public let dvbNitSettings: DvbNitSettings?
    /// Inserts DVB Service Description Table (SDT) at the specified table repetition interval.
    public let dvbSdtSettings: DvbSdtSettings?
    /// Packet Identifier (PID) for input source DVB Subtitle data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
    public let dvbSubPids: String?
    /// Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.
    public let dvbTdtSettings: DvbTdtSettings?
    /// Packet Identifier (PID) for input source DVB Teletext data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    public let dvbTeletextPid: String?
    /// If set to passthrough, passes any EBIF data from the input source to this output.
    public let ebif: M2tsEbifControl?
    /// When videoAndFixedIntervals is selected, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. Only available when EBP Cablelabs segmentation markers are selected.  Partitions 1 and 2 will always follow the video interval.
    public let ebpAudioInterval: M2tsAudioInterval?
    /// When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker.  The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
    public let ebpLookaheadMs: Int
    /// Controls placement of EBP on Audio PIDs. If set to videoAndAudioPids, EBP markers will be placed on the video PID and all audio PIDs.  If set to videoPid, EBP markers will be placed on only the video PID.
    public let ebpPlacement: M2tsEbpPlacement?
    /// This field is unused and deprecated.
    public let ecmPid: String?
    /// Include or exclude the ES Rate field in the PES header.
    public let esRateInPes: M2tsEsRateInPes?
    /// Packet Identifier (PID) for input source ETV Platform data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    public let etvPlatformPid: String?
    /// Packet Identifier (PID) for input source ETV Signal data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    public let etvSignalPid: String?
    /// The length in seconds of each fragment. Only used with EBP markers.
    public let fragmentTime: Double
    /// If set to passthrough, passes any KLV data from the input source to this output.
    public let klv: M2tsKlv?
    /// Packet Identifier (PID) for input source KLV data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
    public let klvDataPids: String?
    /// If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
    public let nielsenId3Behavior: M2tsNielsenId3Behavior?
    /// Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
    public let nullPacketBitrate: Double
    /// The number of milliseconds between instances of this table in the output transport stream.  Valid values are 0, 10..1000.
    public let patInterval: Int
    /// When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
    public let pcrControl: M2tsPcrControl?
    /// Maximum time in milliseconds between Program Clock Reference (PCRs) inserted into the transport stream.
    public let pcrPeriod: Int
    /// Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    public let pcrPid: String?
    /// The number of milliseconds between instances of this table in the output transport stream. Valid values are 0, 10..1000.
    public let pmtInterval: Int
    /// Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value. Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    public let pmtPid: String?
    /// The value of the program number field in the Program Map Table.
    public let programNum: Int
    /// When vbr, does not insert null packets into transport stream to fill specified bitrate. The bitrate setting acts as the maximum bitrate when vbr is set.
    public let rateMode: M2tsRateMode?
    /// Packet Identifier (PID) for input source SCTE-27 data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
    public let scte27Pids: String?
    /// Optionally pass SCTE-35 signals from the input source to this output.
    public let scte35Control: M2tsScte35Control?
    /// Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    public let scte35Pid: String?
    /// Inserts segmentation markers at each segmentationTime period. raiSegstart sets the Random Access Indicator bit in the adaptation field. raiAdapt sets the RAI bit and adds the current timecode in the private data bytes. psiSegstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebpLegacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
    public let segmentationMarkers: M2tsSegmentationMarkers?
    /// The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted.
    ///
    /// When a segmentation style of "resetCadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of $segmentationTime seconds.
    ///
    /// When a segmentation style of "maintainCadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentationTime seconds. Note that EBP lookahead is a slight exception to this rule.
    public let segmentationStyle: M2tsSegmentationStyle?
    /// The length in seconds of each segment. Required unless markers is set to _none_.
    public let segmentationTime: Double
    /// When set to passthrough, timed metadata will be passed through from input to output.
    public let timedMetadataBehavior: M2tsTimedMetadataBehavior?
    /// Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    public let timedMetadataPid: String?
    /// The value of the transport stream ID field in the Program Map Table.
    public let transportStreamId: Int
    /// Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
    public let videoPid: String?

    public init (
        absentInputAudioBehavior: M2tsAbsentInputAudioBehavior? = nil,
        arib: M2tsArib? = nil,
        aribCaptionsPid: String? = nil,
        aribCaptionsPidControl: M2tsAribCaptionsPidControl? = nil,
        audioBufferModel: M2tsAudioBufferModel? = nil,
        audioFramesPerPes: Int = 0,
        audioPids: String? = nil,
        audioStreamType: M2tsAudioStreamType? = nil,
        bitrate: Int = 0,
        bufferModel: M2tsBufferModel? = nil,
        ccDescriptor: M2tsCcDescriptor? = nil,
        dvbNitSettings: DvbNitSettings? = nil,
        dvbSdtSettings: DvbSdtSettings? = nil,
        dvbSubPids: String? = nil,
        dvbTdtSettings: DvbTdtSettings? = nil,
        dvbTeletextPid: String? = nil,
        ebif: M2tsEbifControl? = nil,
        ebpAudioInterval: M2tsAudioInterval? = nil,
        ebpLookaheadMs: Int = 0,
        ebpPlacement: M2tsEbpPlacement? = nil,
        ecmPid: String? = nil,
        esRateInPes: M2tsEsRateInPes? = nil,
        etvPlatformPid: String? = nil,
        etvSignalPid: String? = nil,
        fragmentTime: Double = 0.0,
        klv: M2tsKlv? = nil,
        klvDataPids: String? = nil,
        nielsenId3Behavior: M2tsNielsenId3Behavior? = nil,
        nullPacketBitrate: Double = 0.0,
        patInterval: Int = 0,
        pcrControl: M2tsPcrControl? = nil,
        pcrPeriod: Int = 0,
        pcrPid: String? = nil,
        pmtInterval: Int = 0,
        pmtPid: String? = nil,
        programNum: Int = 0,
        rateMode: M2tsRateMode? = nil,
        scte27Pids: String? = nil,
        scte35Control: M2tsScte35Control? = nil,
        scte35Pid: String? = nil,
        segmentationMarkers: M2tsSegmentationMarkers? = nil,
        segmentationStyle: M2tsSegmentationStyle? = nil,
        segmentationTime: Double = 0.0,
        timedMetadataBehavior: M2tsTimedMetadataBehavior? = nil,
        timedMetadataPid: String? = nil,
        transportStreamId: Int = 0,
        videoPid: String? = nil
    )
    {
        self.absentInputAudioBehavior = absentInputAudioBehavior
        self.arib = arib
        self.aribCaptionsPid = aribCaptionsPid
        self.aribCaptionsPidControl = aribCaptionsPidControl
        self.audioBufferModel = audioBufferModel
        self.audioFramesPerPes = audioFramesPerPes
        self.audioPids = audioPids
        self.audioStreamType = audioStreamType
        self.bitrate = bitrate
        self.bufferModel = bufferModel
        self.ccDescriptor = ccDescriptor
        self.dvbNitSettings = dvbNitSettings
        self.dvbSdtSettings = dvbSdtSettings
        self.dvbSubPids = dvbSubPids
        self.dvbTdtSettings = dvbTdtSettings
        self.dvbTeletextPid = dvbTeletextPid
        self.ebif = ebif
        self.ebpAudioInterval = ebpAudioInterval
        self.ebpLookaheadMs = ebpLookaheadMs
        self.ebpPlacement = ebpPlacement
        self.ecmPid = ecmPid
        self.esRateInPes = esRateInPes
        self.etvPlatformPid = etvPlatformPid
        self.etvSignalPid = etvSignalPid
        self.fragmentTime = fragmentTime
        self.klv = klv
        self.klvDataPids = klvDataPids
        self.nielsenId3Behavior = nielsenId3Behavior
        self.nullPacketBitrate = nullPacketBitrate
        self.patInterval = patInterval
        self.pcrControl = pcrControl
        self.pcrPeriod = pcrPeriod
        self.pcrPid = pcrPid
        self.pmtInterval = pmtInterval
        self.pmtPid = pmtPid
        self.programNum = programNum
        self.rateMode = rateMode
        self.scte27Pids = scte27Pids
        self.scte35Control = scte35Control
        self.scte35Pid = scte35Pid
        self.segmentationMarkers = segmentationMarkers
        self.segmentationStyle = segmentationStyle
        self.segmentationTime = segmentationTime
        self.timedMetadataBehavior = timedMetadataBehavior
        self.timedMetadataPid = timedMetadataPid
        self.transportStreamId = transportStreamId
        self.videoPid = videoPid
    }
}

extension M2tsSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "M2tsSettings(absentInputAudioBehavior: \(String(describing: absentInputAudioBehavior)), arib: \(String(describing: arib)), aribCaptionsPid: \(String(describing: aribCaptionsPid)), aribCaptionsPidControl: \(String(describing: aribCaptionsPidControl)), audioBufferModel: \(String(describing: audioBufferModel)), audioFramesPerPes: \(String(describing: audioFramesPerPes)), audioPids: \(String(describing: audioPids)), audioStreamType: \(String(describing: audioStreamType)), bitrate: \(String(describing: bitrate)), bufferModel: \(String(describing: bufferModel)), ccDescriptor: \(String(describing: ccDescriptor)), dvbNitSettings: \(String(describing: dvbNitSettings)), dvbSdtSettings: \(String(describing: dvbSdtSettings)), dvbSubPids: \(String(describing: dvbSubPids)), dvbTdtSettings: \(String(describing: dvbTdtSettings)), dvbTeletextPid: \(String(describing: dvbTeletextPid)), ebif: \(String(describing: ebif)), ebpAudioInterval: \(String(describing: ebpAudioInterval)), ebpLookaheadMs: \(String(describing: ebpLookaheadMs)), ebpPlacement: \(String(describing: ebpPlacement)), ecmPid: \(String(describing: ecmPid)), esRateInPes: \(String(describing: esRateInPes)), etvPlatformPid: \(String(describing: etvPlatformPid)), etvSignalPid: \(String(describing: etvSignalPid)), fragmentTime: \(String(describing: fragmentTime)), klv: \(String(describing: klv)), klvDataPids: \(String(describing: klvDataPids)), nielsenId3Behavior: \(String(describing: nielsenId3Behavior)), nullPacketBitrate: \(String(describing: nullPacketBitrate)), patInterval: \(String(describing: patInterval)), pcrControl: \(String(describing: pcrControl)), pcrPeriod: \(String(describing: pcrPeriod)), pcrPid: \(String(describing: pcrPid)), pmtInterval: \(String(describing: pmtInterval)), pmtPid: \(String(describing: pmtPid)), programNum: \(String(describing: programNum)), rateMode: \(String(describing: rateMode)), scte27Pids: \(String(describing: scte27Pids)), scte35Control: \(String(describing: scte35Control)), scte35Pid: \(String(describing: scte35Pid)), segmentationMarkers: \(String(describing: segmentationMarkers)), segmentationStyle: \(String(describing: segmentationStyle)), segmentationTime: \(String(describing: segmentationTime)), timedMetadataBehavior: \(String(describing: timedMetadataBehavior)), timedMetadataPid: \(String(describing: timedMetadataPid)), transportStreamId: \(String(describing: transportStreamId)), videoPid: \(String(describing: videoPid)))"}
}