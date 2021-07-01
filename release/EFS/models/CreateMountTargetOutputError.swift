// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateMountTargetOutputError: Equatable {
    case availabilityZonesMismatch(AvailabilityZonesMismatch)
    case badRequest(BadRequest)
    case fileSystemNotFound(FileSystemNotFound)
    case incorrectFileSystemLifeCycleState(IncorrectFileSystemLifeCycleState)
    case internalServerError(InternalServerError)
    case ipAddressInUse(IpAddressInUse)
    case mountTargetConflict(MountTargetConflict)
    case networkInterfaceLimitExceeded(NetworkInterfaceLimitExceeded)
    case noFreeAddressesInSubnet(NoFreeAddressesInSubnet)
    case securityGroupLimitExceeded(SecurityGroupLimitExceeded)
    case securityGroupNotFound(SecurityGroupNotFound)
    case subnetNotFound(SubnetNotFound)
    case unsupportedAvailabilityZone(UnsupportedAvailabilityZone)
    case unknown(UnknownAWSHttpServiceError)
}