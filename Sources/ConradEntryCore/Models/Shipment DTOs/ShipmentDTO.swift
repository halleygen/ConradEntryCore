//
// ConradEntryCore
// Copyright © 2021 Jesse Halley. All rights reserved.
//

import Foundation

public struct ShipmentDTO: Codable, Hashable, Identifiable {
    public let id: UUID?
    public let clientReference: String
    public let shipmentDate: Date
    public let norTime: Date
    public let vesselName: String
    public let clientID: Int
    public let commodityID: Int
    public let agentID: Int?
    public let traderID: Int?
    public let smelterID: Int
    public let dischargePortID: Int
    public let inspectionCompanyReceiverID: Int?
    public let inspectionCompanySellerID: Int?
    public let inspectionCompanySecondAgentID: Int?
    public let conradTeamSize: Int
    public let proceduralExceptions: [String]
    public let samplingProcedure: [String]
    public let comments: [String]
    public let createdAt: Date?
    public let updatedAt: Date?

    public let billOfLading: DatabaseDTO<UUID, BillOfLadingDTO>?
    public let settlementWeight: DatabaseDTO<UUID, DischargeWeightDTO>?
    public let referenceWeight: DatabaseDTO<UUID, DischargeWeightDTO>?
    public let discharge: DatabaseDTO<UUID, DischargeDTO>?
    public let sampleCollection: DatabaseDTO<UUID, SampleCollectionDTO>?
    public let sampleReduction: DatabaseDTO<UUID, SampleReductionDTO>?
    public let moistureDetermination: DatabaseDTO<UUID, MoistureDeterminationDTO>?
    public let qualityLotSamplePreparation: DatabaseDTO<UUID, QualityLotSamplePreparationDTO>?

    public init(id: UUID?, clientReference: String, shipmentDate: Date, norTime: Date, vesselName: String, clientID: Int, commodityID: Int, agentID: Int?, traderID: Int?, smelterID: Int, dischargePortID: Int, inspectionCompanyReceiverID: Int?, inspectionCompanySellerID: Int?, inspectionCompanySecondAgentID: Int?, conradTeamSize: Int, proceduralExceptions: [String], samplingProcedure: [String], comments: [String], createdAt: Date?, updatedAt: Date?, billOfLading: DatabaseDTO<UUID, BillOfLadingDTO>?, settlementWeight: DatabaseDTO<UUID, DischargeWeightDTO>?, referenceWeight: DatabaseDTO<UUID, DischargeWeightDTO>?, discharge: DatabaseDTO<UUID, DischargeDTO>?, sampleCollection: DatabaseDTO<UUID, SampleCollectionDTO>?, sampleReduction: DatabaseDTO<UUID, SampleReductionDTO>?, moistureDetermination: DatabaseDTO<UUID, MoistureDeterminationDTO>?, qualityLotSamplePreparation: DatabaseDTO<UUID, QualityLotSamplePreparationDTO>?) {
        self.id = id
        self.clientReference = clientReference
        self.shipmentDate = shipmentDate
        self.norTime = norTime
        self.vesselName = vesselName
        self.clientID = clientID
        self.commodityID = commodityID
        self.agentID = agentID
        self.traderID = traderID
        self.smelterID = smelterID
        self.dischargePortID = dischargePortID
        self.inspectionCompanyReceiverID = inspectionCompanyReceiverID
        self.inspectionCompanySellerID = inspectionCompanySellerID
        self.inspectionCompanySecondAgentID = inspectionCompanySecondAgentID
        self.conradTeamSize = conradTeamSize
        self.proceduralExceptions = proceduralExceptions
        self.samplingProcedure = samplingProcedure
        self.comments = comments
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.billOfLading = billOfLading
        self.settlementWeight = settlementWeight
        self.referenceWeight = referenceWeight
        self.discharge = discharge
        self.sampleCollection = sampleCollection
        self.sampleReduction = sampleReduction
        self.moistureDetermination = moistureDetermination
        self.qualityLotSamplePreparation = qualityLotSamplePreparation
    }

    public enum CodingKeys: String, CodingKey {
        case id
        case clientReference
        case shipmentDate
        case norTime
        case vesselName
        case clientID
        case commodityID
        case agentID
        case traderID
        case smelterID
        case dischargePortID
        case inspectionCompanyReceiverID
        case inspectionCompanySellerID
        case inspectionCompanySecondAgentID
        case conradTeamSize
        case proceduralExceptions
        case samplingProcedure
        case comments
        case createdAt
        case updatedAt
        case billOfLading
        case settlementWeight
        case referenceWeight
        case discharge
        case sampleCollection
        case sampleReduction
        case moistureDetermination
        case qualityLotSamplePreparation
    }
}
