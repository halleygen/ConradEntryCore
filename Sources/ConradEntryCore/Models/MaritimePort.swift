//
// ConradEntryCore
// Copyright © 2020 Jesse Halley. All rights reserved.
//

import Foundation

public struct MaritimePort: Hashable, Codable {
    public let name: String
    public let countryCode: String
    public let timeZoneIdentifier: String

    public var flag: String {
        countryCode.unicodeScalars.reduce(into: "") { result, scalar in
            result.unicodeScalars.append(Unicode.Scalar(0x1F1A5 &+ scalar.value)!)
        }
    }

    public var timeZone: TimeZone { TimeZone(identifier: timeZoneIdentifier)! }

    public init(name: String, countryCode: String, timeZoneIdentifier: String) {
        precondition(TimeZone(identifier: timeZoneIdentifier) != nil, "Port initialized with invalid time zone identifier.")
        self.name = name
        self.countryCode = countryCode
        self.timeZoneIdentifier = timeZoneIdentifier
    }
}

public extension MaritimePort {
    enum CodingKeys: String, CodingKey {
        case name, countryCode, timeZoneIdentifier
    }
}

extension MaritimePort: CustomStringConvertible {
    public var description: String {
        "\(name), \(countryCode) (\(timeZoneIdentifier))"
    }

    public init?(string: String) {
        guard
            let endOfName = string.firstIndex(of: ","),
            let startOfTimeZone = string.firstIndex(of: "(").map(string.index(after:)),
            let endOfTimeZone = string.lastIndex(of: ")")
        else { return nil }

        let startOfCountryCode = string.index(endOfName, offsetBy: 2)
        guard let endOfCountryCode = string[startOfCountryCode...].firstIndex(of: " ") else { return nil }

        self.name = String(string[string.startIndex ..< endOfName])
        self.countryCode = String(string[startOfCountryCode ..< endOfCountryCode])
        self.timeZoneIdentifier = String(string[startOfTimeZone ..< endOfTimeZone])
    }
}