// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Player information for use when creating player sessions using a game session
///         placement request with <a>StartGameSessionPlacement</a>.</p>
public struct DesiredPlayerSession: Equatable {
    /// <p>Developer-defined information related to a player. GameLift does not use this data, so it can be formatted as needed for use in the game.</p>
    public let playerData: String?
    /// <p>A unique identifier for a player to associate with the player session.</p>
    public let playerId: String?

    public init (
        playerData: String? = nil,
        playerId: String? = nil
    )
    {
        self.playerData = playerData
        self.playerId = playerId
    }
}

extension DesiredPlayerSession: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DesiredPlayerSession(playerData: \(String(describing: playerData)), playerId: \(String(describing: playerId)))"}
}