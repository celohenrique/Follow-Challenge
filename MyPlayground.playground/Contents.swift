import UIKit

func compactarNumero(valor: Int) -> String {
    
    let mils = Double(valor) / 1000
    let millions = Double(valor) / 1000000
    
    switch valor {
        
    case 0...999:
        return "\(valor)"
        
    case 1000...999999:
        if mils > 1.0 {
        let format = String(format: "%.1f", mils)
            return "\(format)k"
        }
        else {
            return "\(Int(mils))k"
        }
        
    case 1000000...999999999:
        if millions > 1.0 {
            let formatMillion = String(format: "%.1f", millions)
            return "\(formatMillion)M"
        }
        else{
            return "\(Int(millions))M"
        }
    default:
        break
    }
    
    return "\(valor)"
}



print(compactarNumero(valor: 50)) // 50
print(compactarNumero(valor: 876)) // 876
print(compactarNumero(valor: 1000)) // 1k
print(compactarNumero(valor: 4321)) // 4.3k
print(compactarNumero(valor: 1000000)) // 1M
print(compactarNumero(valor: 7654321)) // 7.6M
