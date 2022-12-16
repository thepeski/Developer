import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value)) + "kg"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider
        let weight = weightSlider
        
        let bmi = weight / pow(height, 2)
    }
}

