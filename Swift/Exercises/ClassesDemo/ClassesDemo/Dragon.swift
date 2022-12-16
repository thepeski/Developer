class Dragon: Enemy {
    var wingspan = 2
    
    override func move() {
        print("Flies forwards.")
    }
    
    override func attack() {
        super.attack() // does what the original method does
        print("Does 15 damage.") // plus any additional actions
    }
}
