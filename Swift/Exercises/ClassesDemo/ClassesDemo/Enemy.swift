class Enemy {
    var health = 100
    var attackStrength = 10
    
    func move() {
        print("Walk")
    }
    
    func attack() {
        print("Lands a strike, does \(attackStrength) damage.")
    }
}
