import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    var advice: String?
    var color: UIColor?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.colour ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", colour: UIColor.cyan)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Keep it on", colour: UIColor.blue)
        } else {
            bmi = BMI(value: bmiValue, advice: "Stop eating!", colour: UIColor.red)
        }
    }
}
