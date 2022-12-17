import UIKit

class CalculatorViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var billTextLabel: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberButton: UILabel!
    
    var tip = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.billTextLabel.delegate = self
    }
    
    func billTextReturn(_ textField:UITextField) -> Bool {
        return billTextLabel.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        sender.isSelected = true
        
        if sender == zeroPctButton {
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
        } else if sender == tenPctButton {
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
            tip = 0.1
        } else if sender == twentyPctButton {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            tip = 0.2
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberButton.text = String(Int(sender.value))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "transition", sender: self)
    }
    
    @IBAction func billTextPressed(_ sender: UITextField) {
        sender.becomeFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "transition" {
            let destVC = segue.destination as! ResultsViewController
    
            destVC.outcome = Float(billTextLabel.text!) ?? 0.0
            destVC.tip = Float(self.tip)
            destVC.people = Int(splitNumberButton.text!)
        }
    }
}

