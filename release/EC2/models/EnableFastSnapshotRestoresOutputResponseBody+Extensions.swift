// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct EnableFastSnapshotRestoresOutputResponseBody: Equatable {
    public let successful: [EnableFastSnapshotRestoreSuccessItem]?
    public let unsuccessful: [EnableFastSnapshotRestoreErrorItem]?
}

extension EnableFastSnapshotRestoresOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case successful = "successful"
        case unsuccessful = "unsuccessful"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.successful) {
            struct KeyVal0{struct item{}}
            let successfulWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .successful)
            if let successfulWrappedContainer = successfulWrappedContainer {
                let successfulContainer = try successfulWrappedContainer.decodeIfPresent([EnableFastSnapshotRestoreSuccessItem].self, forKey: .member)
                var successfulBuffer:[EnableFastSnapshotRestoreSuccessItem]? = nil
                if let successfulContainer = successfulContainer {
                    successfulBuffer = [EnableFastSnapshotRestoreSuccessItem]()
                    for structureContainer0 in successfulContainer {
                        successfulBuffer?.append(structureContainer0)
                    }
                }
                successful = successfulBuffer
            } else {
                successful = []
            }
        } else {
            successful = nil
        }
        if containerValues.contains(.unsuccessful) {
            struct KeyVal0{struct item{}}
            let unsuccessfulWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .unsuccessful)
            if let unsuccessfulWrappedContainer = unsuccessfulWrappedContainer {
                let unsuccessfulContainer = try unsuccessfulWrappedContainer.decodeIfPresent([EnableFastSnapshotRestoreErrorItem].self, forKey: .member)
                var unsuccessfulBuffer:[EnableFastSnapshotRestoreErrorItem]? = nil
                if let unsuccessfulContainer = unsuccessfulContainer {
                    unsuccessfulBuffer = [EnableFastSnapshotRestoreErrorItem]()
                    for structureContainer0 in unsuccessfulContainer {
                        unsuccessfulBuffer?.append(structureContainer0)
                    }
                }
                unsuccessful = unsuccessfulBuffer
            } else {
                unsuccessful = []
            }
        } else {
            unsuccessful = nil
        }
    }
}