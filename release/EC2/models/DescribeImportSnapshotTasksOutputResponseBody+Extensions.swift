// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeImportSnapshotTasksOutputResponseBody: Equatable {
    public let importSnapshotTasks: [ImportSnapshotTask]?
    public let nextToken: String?
}

extension DescribeImportSnapshotTasksOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case importSnapshotTasks = "importSnapshotTaskSet"
        case nextToken = "nextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.importSnapshotTasks) {
            struct KeyVal0{struct item{}}
            let importSnapshotTasksWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .importSnapshotTasks)
            if let importSnapshotTasksWrappedContainer = importSnapshotTasksWrappedContainer {
                let importSnapshotTasksContainer = try importSnapshotTasksWrappedContainer.decodeIfPresent([ImportSnapshotTask].self, forKey: .member)
                var importSnapshotTasksBuffer:[ImportSnapshotTask]? = nil
                if let importSnapshotTasksContainer = importSnapshotTasksContainer {
                    importSnapshotTasksBuffer = [ImportSnapshotTask]()
                    for structureContainer0 in importSnapshotTasksContainer {
                        importSnapshotTasksBuffer?.append(structureContainer0)
                    }
                }
                importSnapshotTasks = importSnapshotTasksBuffer
            } else {
                importSnapshotTasks = []
            }
        } else {
            importSnapshotTasks = nil
        }
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}