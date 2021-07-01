// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ImageConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case command = "Command"
        case entryPoint = "EntryPoint"
        case workingDirectory = "WorkingDirectory"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let command = command {
            var commandContainer = encodeContainer.nestedUnkeyedContainer(forKey: .command)
            for stringlist0 in command {
                try commandContainer.encode(stringlist0)
            }
        }
        if let entryPoint = entryPoint {
            var entryPointContainer = encodeContainer.nestedUnkeyedContainer(forKey: .entryPoint)
            for stringlist0 in entryPoint {
                try entryPointContainer.encode(stringlist0)
            }
        }
        if let workingDirectory = workingDirectory {
            try encodeContainer.encode(workingDirectory, forKey: .workingDirectory)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let entryPointContainer = try containerValues.decodeIfPresent([String?].self, forKey: .entryPoint)
        var entryPointDecoded0:[String]? = nil
        if let entryPointContainer = entryPointContainer {
            entryPointDecoded0 = [String]()
            for string0 in entryPointContainer {
                if let string0 = string0 {
                    entryPointDecoded0?.append(string0)
                }
            }
        }
        entryPoint = entryPointDecoded0
        let commandContainer = try containerValues.decodeIfPresent([String?].self, forKey: .command)
        var commandDecoded0:[String]? = nil
        if let commandContainer = commandContainer {
            commandDecoded0 = [String]()
            for string0 in commandContainer {
                if let string0 = string0 {
                    commandDecoded0?.append(string0)
                }
            }
        }
        command = commandDecoded0
        let workingDirectoryDecoded = try containerValues.decodeIfPresent(String.self, forKey: .workingDirectory)
        workingDirectory = workingDirectoryDecoded
    }
}