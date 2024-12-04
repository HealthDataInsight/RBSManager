//
//  HeaderMessage.swift
//  Pods
//
//  Created by Wes Goodhoofd on 2018-01-11.
//

import Foundation
import ObjectMapper

public class HeaderMessage: RBSMessage {
    public var stamp: TimeMessage?
    public var frameId: String?

    public override init() {
        super.init()
        stamp = TimeMessage()
    }

    public required init?(map: Map) {
        super.init(map: map)
    }

    override public func mapping(map: Map) {
        stamp <- map["stamp"]
        frameId <- map["frame_id"]
    }
}
