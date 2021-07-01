// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateCostCategoryDefinitionInputBody: Equatable {
    public let costCategoryArn: String?
    public let ruleVersion: CostCategoryRuleVersion?
    public let rules: [CostCategoryRule]?
    public let defaultValue: String?
}

extension UpdateCostCategoryDefinitionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case costCategoryArn = "CostCategoryArn"
        case defaultValue = "DefaultValue"
        case ruleVersion = "RuleVersion"
        case rules = "Rules"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let costCategoryArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .costCategoryArn)
        costCategoryArn = costCategoryArnDecoded
        let ruleVersionDecoded = try containerValues.decodeIfPresent(CostCategoryRuleVersion.self, forKey: .ruleVersion)
        ruleVersion = ruleVersionDecoded
        let rulesContainer = try containerValues.decodeIfPresent([CostCategoryRule?].self, forKey: .rules)
        var rulesDecoded0:[CostCategoryRule]? = nil
        if let rulesContainer = rulesContainer {
            rulesDecoded0 = [CostCategoryRule]()
            for structure0 in rulesContainer {
                if let structure0 = structure0 {
                    rulesDecoded0?.append(structure0)
                }
            }
        }
        rules = rulesDecoded0
        let defaultValueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .defaultValue)
        defaultValue = defaultValueDecoded
    }
}