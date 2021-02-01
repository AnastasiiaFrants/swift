import UIKit

enum Windows {
    case close, open
}
enum TrunkActions {
    case empty, full
}
class Car {
    var Brand: String
    var Release: Int
    init(Brand: String, Release: Int) {
        self.Brand = Brand
        self.Release = Release
    }
}
class trunkCar: Car{
    var trunk: TrunkActions
    init(Brand: String, Release: Int, trunk: TrunkActions ) {
        self.trunk = trunk
        super.init(Brand: Brand, Release: Release)
    }
    func TrunkState() {
        if trunk ==  .empty{
            print("Багажник пуст")
        }
        else{
            print("Багажник полон")
        }
    }
}
class sportCar: Car{
    var windows: Windows
    init(Brand: String, Release: Int, windows: Windows ) {
        self.windows = windows
        super.init(Brand: Brand, Release: Release)
    }
    func WindowsAction() {
        if windows ==  .close{
            print("Окна закрыты")
        }
        else{
            print("Окна открыты")
        }
    }
}
let Tesla = sportCar(Brand: "Tesla", Release: 2017, windows: .open)
Tesla.WindowsAction()

let Gazel = trunkCar(Brand: "Газель", Release: 1995, trunk: .empty)
Gazel.TrunkState()
