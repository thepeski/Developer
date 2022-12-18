protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
        
    }
    
    func performCPR() {
        print("The paramedic performs chest compression for 30 seconds.")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compression for 30 seconds.")
    }
    
    func useStethescope() {
        print("Listening for heart sounds")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings Staying Alive by the Bee Gees")
    }
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
