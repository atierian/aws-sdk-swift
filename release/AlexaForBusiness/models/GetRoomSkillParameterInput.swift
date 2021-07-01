// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetRoomSkillParameterInput: Equatable {
    /// <p>The room skill parameter key for which to get details. Required.</p>
    public let parameterKey: String?
    /// <p>The ARN of the room from which to get the room skill parameter details. </p>
    public let roomArn: String?
    /// <p>The ARN of the skill from which to get the room skill parameter details.
    ///          Required.</p>
    public let skillId: String?

    public init (
        parameterKey: String? = nil,
        roomArn: String? = nil,
        skillId: String? = nil
    )
    {
        self.parameterKey = parameterKey
        self.roomArn = roomArn
        self.skillId = skillId
    }
}

extension GetRoomSkillParameterInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetRoomSkillParameterInput(parameterKey: \(String(describing: parameterKey)), roomArn: \(String(describing: roomArn)), skillId: \(String(describing: skillId)))"}
}