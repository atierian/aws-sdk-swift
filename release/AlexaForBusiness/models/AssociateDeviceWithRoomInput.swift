// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AssociateDeviceWithRoomInput: Equatable {
    /// <p>The ARN of the device to associate to a room. Required.</p>
    public let deviceArn: String?
    /// <p>The ARN of the room with which to associate the device. Required.</p>
    public let roomArn: String?

    public init (
        deviceArn: String? = nil,
        roomArn: String? = nil
    )
    {
        self.deviceArn = deviceArn
        self.roomArn = roomArn
    }
}

extension AssociateDeviceWithRoomInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AssociateDeviceWithRoomInput(deviceArn: \(String(describing: deviceArn)), roomArn: \(String(describing: roomArn)))"}
}