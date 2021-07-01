// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateGameServerGroupOutputResponse: Equatable {
    /// <p>An object that describes the game server group resource with updated properties. </p>
    public let gameServerGroup: GameServerGroup?

    public init (
        gameServerGroup: GameServerGroup? = nil
    )
    {
        self.gameServerGroup = gameServerGroup
    }
}

extension UpdateGameServerGroupOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateGameServerGroupOutputResponse(gameServerGroup: \(String(describing: gameServerGroup)))"}
}