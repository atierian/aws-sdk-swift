// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DataColorPalette: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case colors = "Colors"
        case emptyFillColor = "EmptyFillColor"
        case minMaxGradient = "MinMaxGradient"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let colors = colors {
            var colorsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .colors)
            for colorlist0 in colors {
                try colorsContainer.encode(colorlist0)
            }
        }
        if let emptyFillColor = emptyFillColor {
            try encodeContainer.encode(emptyFillColor, forKey: .emptyFillColor)
        }
        if let minMaxGradient = minMaxGradient {
            var minMaxGradientContainer = encodeContainer.nestedUnkeyedContainer(forKey: .minMaxGradient)
            for colorlist0 in minMaxGradient {
                try minMaxGradientContainer.encode(colorlist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let colorsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .colors)
        var colorsDecoded0:[String]? = nil
        if let colorsContainer = colorsContainer {
            colorsDecoded0 = [String]()
            for string0 in colorsContainer {
                if let string0 = string0 {
                    colorsDecoded0?.append(string0)
                }
            }
        }
        colors = colorsDecoded0
        let minMaxGradientContainer = try containerValues.decodeIfPresent([String?].self, forKey: .minMaxGradient)
        var minMaxGradientDecoded0:[String]? = nil
        if let minMaxGradientContainer = minMaxGradientContainer {
            minMaxGradientDecoded0 = [String]()
            for string0 in minMaxGradientContainer {
                if let string0 = string0 {
                    minMaxGradientDecoded0?.append(string0)
                }
            }
        }
        minMaxGradient = minMaxGradientDecoded0
        let emptyFillColorDecoded = try containerValues.decodeIfPresent(String.self, forKey: .emptyFillColor)
        emptyFillColor = emptyFillColorDecoded
    }
}