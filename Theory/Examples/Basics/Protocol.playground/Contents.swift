import UIKit

protocol EventType {
    var title: String { get set }
    var id: Int { get }
    func createNotification()
}


// A protocol that inheritance from another Protocol
protocol SpecialSportEventType : EventType {
    var isSpecial: Bool { get }
}

// Class implemeting the protocol EventType
class SportEvent : EventType {
    var title: String = ""
    var id: Int = 0
    
    func createNotification() {
        // do something with notification
    }
}
