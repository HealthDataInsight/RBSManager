//
//  TImeMessage.swift
//  Pods
//
//  Created by Wes Goodhoofd on 2018-01-11.
//

import Foundation
import ObjectMapper

public class TimeMessage: RBSMessage {
    public var sec: Int32 = 0
    public var nanosec: UInt32 = 0

    public override init() {
        super.init()
    }

    public required init?(map: Map) {
        super.init(map: map)
    }

    override public func mapping(map: Map) {
        sec <- map["sec"]
        nanosec <- map["nanosec"]
    }

    public func date() -> Date {
        return Date(timeIntervalSince1970: Double(sec))
    }
}
