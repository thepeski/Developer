import UIKit

class ResultsViewController: UIViewController {
    
    var outcome: Float?
    var tip: Float?
    var people: Int?

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let result = outcome! * (1.0 + tip!) / Float(people!)
        
        totalLabel.text = String(result)
        
        settingsLabel.text = "Split between \(people!) people, with \(Int(tip! * 100))% tip"
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
