import Foundation
import UIKit
struct CalculatorBrain{
    
    var calculatedBMI: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let BMIValue = ((weight)/pow(height, 2))
        if BMIValue < 18.5{
            calculatedBMI = BMI(value: BMIValue, advice: "Eat more pies!", color: UIColor.blue )
        }else if BMIValue >= 18.5 && BMIValue <= 24.9{
            calculatedBMI = BMI(value: BMIValue, advice: "Fit as a fiddle!", color: UIColor.green)
        }else if BMIValue > 24.9{
            calculatedBMI = BMI(value: BMIValue, advice: "Eat less pies!", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", calculatedBMI?.value ?? 0.0)
    }
    func getAdvice() -> String{
        return calculatedBMI!.advice
    }
    func getColor() -> UIColor{
        return calculatedBMI!.color
    }
}
