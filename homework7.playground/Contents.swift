import UIKit
enum SportCarErr: Error{
    case engineIsBroken
    case batteryDies
}
class SportCar {
    var engine: Bool
    var battery: Int
    init(engine: Bool, battery: Int) {
        self.engine = engine
        self.battery = battery
    }
    func batteryDies() throws{

            if battery < 10{

                throw SportCarErr.batteryDies

            }

        }

        func engineState() throws{

            if engine == false{

                    throw SportCarErr.engineIsBroken

            }

        }

    }

var discovery = SportCar(engine: false, battery: 5)

do{

   try discovery.batteryDies()

} catch SportCarErr.batteryDies{

    print("Аккумулятор почти сел")

}

do{

    try discovery.engineState()

} catch SportCarErr.engineIsBroken{

    print("Отказал двигатель")

}

