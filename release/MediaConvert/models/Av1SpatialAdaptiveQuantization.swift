// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
public enum Av1SpatialAdaptiveQuantization {
    case disabled
    case enabled
    case sdkUnknown(String)
}

extension Av1SpatialAdaptiveQuantization : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Av1SpatialAdaptiveQuantization] {
        return [
            .disabled,
            .enabled,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .disabled: return "DISABLED"
        case .enabled: return "ENABLED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Av1SpatialAdaptiveQuantization(rawValue: rawValue) ?? Av1SpatialAdaptiveQuantization.sdkUnknown(rawValue)
    }
}