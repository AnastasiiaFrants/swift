import UIKit
enum Motor{
    case start
    case stop
}
enum Windows {
    case close
    case open
}
enum TrunkActions {
    case Unload
    case Upload
}
struct Car {
    let Brand: String
    let Release: Int
    let TrunkVol: Int
    var Motor: Motor{
        willSet{
            if newValue == .start{
                print("Двигатель запущен")
            }
            else{
                print("Двигатель заглушен")
            }
        }
    }
    var Windows: Windows{
        willSet{
            if newValue == .open{
                print("Окна открыты")
            }
            else{
                print("Окна закрыты")
            }
            
        }
    }
    var TrunkActions: TrunkActions{
        willSet{
            if newValue == .Unload {
                print("Багажник разгружен")
            }
            else{
                print("Багажник загружен")
            }
        }
    }
}
var sportCar = Car(Brand: "Tesla", Release: 2017,  TrunkVol: 100, Motor: .start, Windows: .close, TrunkActions: .Unload )
var trunkCar = Car(Brand: "ГАЗЕЛЬ", Release: 1996,  TrunkVol:500 , Motor: .stop, Windows: .open, TrunkActions: .Upload )
sportCar.Motor = .stop
trunkCar.Windows = .close
print("Машина марки \(sportCar.Brand) выпущена в \(sportCar.Release). Объём багажника \(sportCar.TrunkVol)")
print("Машина марки \(trunkCar.Brand) выпущена в \(trunkCar.Release). Объём багажника \(trunkCar.TrunkVol)")

