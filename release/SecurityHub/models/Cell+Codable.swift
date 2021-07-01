// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Cell: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cellReference = "CellReference"
        case column = "Column"
        case columnName = "ColumnName"
        case row = "Row"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cellReference = cellReference {
            try encodeContainer.encode(cellReference, forKey: .cellReference)
        }
        if column != 0 {
            try encodeContainer.encode(column, forKey: .column)
        }
        if let columnName = columnName {
            try encodeContainer.encode(columnName, forKey: .columnName)
        }
        if row != 0 {
            try encodeContainer.encode(row, forKey: .row)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let columnDecoded = try containerValues.decode(Int.self, forKey: .column)
        column = columnDecoded
        let rowDecoded = try containerValues.decode(Int.self, forKey: .row)
        row = rowDecoded
        let columnNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .columnName)
        columnName = columnNameDecoded
        let cellReferenceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cellReference)
        cellReference = cellReferenceDecoded
    }
}