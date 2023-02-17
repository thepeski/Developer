protocol AdvancedLifeSupport {
    func performCPR() // every complying object must implement this function
}

class EmergencyCallHandler { // this class can trigger another object to execute a function
    var delegate: AdvancedLifeSupport? // defining the object to execute the function
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport { // complies with AdvancedLifeSupport protocol
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self // allows EmergencyCallHandler to delegate AdvancedLifeSupport to itself (Paramedic)
    }
    
    func performCPR() { // Paramedic implements the function in its own way
        print("The paramedic performs chest compression for 30 seconds.")
    }
}

class Doctor: AdvancedLifeSupport { // another object complying with AdvancedLifeSupport protocol
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() { // Doctor implements the function in its own way
        print("The doctor does chest compression for 30 seconds.")
    }
    
    func useStethescope() { // can have additional functionalities
        print("Listening for heart sounds")
    }
}

class Surgeon: Doctor { // Surgeon inherits from Doctor so complies with AdvancedLifeSupport protocol
    override func performCPR() { // extending Doctor's function
        super.performCPR()
        print("Sings Staying Alive by the Bee Gees")
    }
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
