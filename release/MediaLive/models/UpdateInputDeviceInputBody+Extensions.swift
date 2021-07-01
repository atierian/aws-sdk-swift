// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateInputDeviceInputBody: Equatable {
    public let hdDeviceSettings: InputDeviceConfigurableSettings?
    public let name: String?
    public let uhdDeviceSettings: InputDeviceConfigurableSettings?
}

extension UpdateInputDeviceInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case hdDeviceSettings = "hdDeviceSettings"
        case name = "name"
        case uhdDeviceSettings = "uhdDeviceSettings"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let hdDeviceSettingsDecoded = try containerValues.decodeIfPresent(InputDeviceConfigurableSettings.self, forKey: .hdDeviceSettings)
        hdDeviceSettings = hdDeviceSettingsDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let uhdDeviceSettingsDecoded = try containerValues.decodeIfPresent(InputDeviceConfigurableSettings.self, forKey: .uhdDeviceSettings)
        uhdDeviceSettings = uhdDeviceSettingsDecoded
    }
}