import CoreGraphics

protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyHandler {
    var delegate: AdvancedLifeSupport?
    
    func assesSituation() {
        print("Please can you tell me what is wrong?")
    }
    
    func medicalEmergency(){
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("Pumping chest: Paramedic style")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("Pumping chest: Doctor style")
    }
    
    func useStethescope(){
        print("Uses stethescope")
    }
}

class Surgeon: Doctor {
    
    override func performCPR() {
        super.performCPR()
        
        print("Sing staying alive by the BeeGees")
    }
    
    func useElectricDrill(){
        print("Whirl...")
    }
}

let emillio = EmergencyHandler()
//let paramedic = Paramedic(handler: emillio)
//let doctor = Doctor(handler: emillio)
let surgeon = Surgeon(handler: emillio)

emillio.medicalEmergency()
surgeon.useElectricDrill()
