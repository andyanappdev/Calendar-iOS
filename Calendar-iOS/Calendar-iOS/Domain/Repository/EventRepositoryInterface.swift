//
//  EventRepositoryInterface.swift
//  Calendar-iOS
//
//  Created by Doyoung An on 4/17/24.
//

protocol EventRepositoryInterface {
    func fetchAllEvnets()async -> [Event]
    func updateAllEvents(events: [Event]) async
    
    func createEvent(event: Event) async
    func updateEvent(event: Event) async
    func deleteEvent(event: Event) async
}
