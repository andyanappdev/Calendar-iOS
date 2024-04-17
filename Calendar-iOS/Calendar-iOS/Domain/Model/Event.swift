//
//  Event.swift
//  Calendar-iOS
//
//  Created by Doyoung An on 4/16/24.
//

import Foundation

struct Event {
    let id: UUID
    let title: String
    let eventType: EventType
    let startDate: Date
    let endDate: Date
    let favorite: Bool
    let content: EventContent
    
    init(title: String, eventType: EventType, startDate: Date, endDate: Date, favorite: Bool = false, content: EventContent) {
        self.id = UUID()
        self.title = title
        self.eventType = eventType
        self.startDate = startDate
        self.endDate = endDate
        self.favorite = favorite
        self.content = content
    }
}

struct EventType {
    let typeName: String
    let color: NSCoder
}

enum EventContent {
    case todo([TodoItem])
    case diary(content: String)
}

struct TodoItem {
    let completed: Bool
    let todoDescription: String
}
