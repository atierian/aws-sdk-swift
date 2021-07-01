// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateMeetingWithAttendeesInputBody: Equatable {
    public let clientRequestToken: String?
    public let externalMeetingId: String?
    public let meetingHostId: String?
    public let mediaRegion: String?
    public let tags: [Tag]?
    public let notificationsConfiguration: MeetingNotificationConfiguration?
    public let attendees: [CreateAttendeeRequestItem]?
}

extension CreateMeetingWithAttendeesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case attendees = "Attendees"
        case clientRequestToken = "ClientRequestToken"
        case externalMeetingId = "ExternalMeetingId"
        case mediaRegion = "MediaRegion"
        case meetingHostId = "MeetingHostId"
        case notificationsConfiguration = "NotificationsConfiguration"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clientRequestTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientRequestToken)
        clientRequestToken = clientRequestTokenDecoded
        let externalMeetingIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .externalMeetingId)
        externalMeetingId = externalMeetingIdDecoded
        let meetingHostIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .meetingHostId)
        meetingHostId = meetingHostIdDecoded
        let mediaRegionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .mediaRegion)
        mediaRegion = mediaRegionDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
        let notificationsConfigurationDecoded = try containerValues.decodeIfPresent(MeetingNotificationConfiguration.self, forKey: .notificationsConfiguration)
        notificationsConfiguration = notificationsConfigurationDecoded
        let attendeesContainer = try containerValues.decodeIfPresent([CreateAttendeeRequestItem?].self, forKey: .attendees)
        var attendeesDecoded0:[CreateAttendeeRequestItem]? = nil
        if let attendeesContainer = attendeesContainer {
            attendeesDecoded0 = [CreateAttendeeRequestItem]()
            for structure0 in attendeesContainer {
                if let structure0 = structure0 {
                    attendeesDecoded0?.append(structure0)
                }
            }
        }
        attendees = attendeesDecoded0
    }
}