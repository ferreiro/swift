import UIKit

struct Point{
    let x: Double
    let y: Double
}

print(Point(x:1, y:2))

extension Point: CustomStringConvertible {
    var description: String {
        return "This is a point \(x) : \(y)"
    }
}