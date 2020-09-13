//
//  ViewController.swift
//  Пасхалия
//
//  Created by Ruslan Ivanov on 08.09.2020.
//  Copyright © 2020 Ruslan Ivanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    var selectedYear: String?
    
    var easterYears = [
        "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029","2030",
        "2031", "2032", "2033", "2034", "2035", "2036", "2037", "2038", "2039", "2040",
        "2041", "2042", "2043", "2044", "2045", "2046", "2047", "2048", "2049", "2050",
        "2051", "2052", "2053", "2054", "2055", "2056", "2057", "2058", "2059", "2060",
        "2061", "2062", "2063", "2064", "2065", "2066", "2067", "2068", "2069", "2070",
        "2071", "2072", "2073", "2074", "2075", "2076", "2077", "2078", "2079", "2080",
        "2081", "2082", "2083", "2084", "2085", "2086", "2087", "2088", "2089",
        "2090", "2091", "2092", "2093", "2094", "2095", "2096", "2097", "2098", "2099", "2100"
    ]
    
    @IBOutlet weak var textFiled: UITextField!
    @IBOutlet var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createPickerView()
        dismissPickerView()
        
        calculateButton.layer.borderWidth = 3
        calculateButton.layer.cornerRadius = 10
        
        textFiled.layer.cornerRadius = 10
        textFiled.clipsToBounds = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int { return 1 }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return easterYears.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return easterYears[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedYear = easterYears[row]
        textFiled.text = selectedYear
    }
    
    func createPickerView() {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        textFiled.inputView = pickerView
    }
    
    func dismissPickerView() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let button = UIBarButtonItem(title: "OK", style: .plain, target: self, action: #selector(self.action))
        toolBar.setItems([button], animated: true)
        toolBar.isUserInteractionEnabled = true
        textFiled.inputAccessoryView = toolBar
        
        let flexBarButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                            target: nil,
                                            action: nil)
        
        toolBar.items = [flexBarButton, button]
    }
    
    @objc func action() {
       view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondViewController
                
        switch textFiled.text {
            
        case "2020": secondVC.dateOfEaster = "В 2020 году Пасха празднуется 19 апреля"
        case "2021": secondVC.dateOfEaster = "В 2021 году Пасха празднуется 2 мая"
        case "2022": secondVC.dateOfEaster = "В 2022 году Пасха празднуется 24 апреля"
        case "2023": secondVC.dateOfEaster = "В 2023 году Пасха празднуется 16 апреля"
        case "2024": secondVC.dateOfEaster = "В 2024 году Пасха празднуется 5 мая"
        case "2025": secondVC.dateOfEaster = "В 2025 году Пасха празднуется 20 апреля"
        case "2026": secondVC.dateOfEaster = "В 2026 году Пасха празднуется 12 апреля"
        case "2027": secondVC.dateOfEaster = "В 2027 году Пасха празднуется 5 мая"
        case "2028": secondVC.dateOfEaster = "В 2028 году Пасха празднуется 16 апреля"
        case "2029": secondVC.dateOfEaster = "В 2029 году Пасха празднуется 8 апреля"
        case "2030": secondVC.dateOfEaster = "В 2030 году Пасха празднуется 28 апреля"
        case "2031": secondVC.dateOfEaster = "В 2031 году Пасха празднуется 13 апреля"
        case "2032": secondVC.dateOfEaster = "В 2032 году Пасха празднуется 2 мая"
        case "2033": secondVC.dateOfEaster = "В 2033 году Пасха празднуется 24 апреля"
        case "2034": secondVC.dateOfEaster = "В 2034 году Пасха празднуется 9 апреля"
        case "2035": secondVC.dateOfEaster = "В 2035 году Пасха празднуется 29 апреля"
        case "2036": secondVC.dateOfEaster = "В 2036 году Пасха празднуется 20 апреля"
        case "2037": secondVC.dateOfEaster = "В 2037 году Пасха празднуется 5 апреля"
        case "2038": secondVC.dateOfEaster = "В 2038 году Пасха празднуется 25 апреля"
        case "2039": secondVC.dateOfEaster = "В 2039 году Пасха празднуется 17 апреля"
        case "2040": secondVC.dateOfEaster = "В 2040 году Пасха празднуется 6 мая"
        case "2041": secondVC.dateOfEaster = "В 2041 году Пасха празднуется 21 апреля"
        case "2042": secondVC.dateOfEaster = "В 2042 году Пасха празднуется 13 апреля"
        case "2043": secondVC.dateOfEaster = "В 2043 году Пасха празднуется 3 мая"
        case "2044": secondVC.dateOfEaster = "В 2044 году Пасха празднуется 24 апреля"
        case "2045": secondVC.dateOfEaster = "В 2045 году Пасха празднуется 9 апреля"
        case "2046": secondVC.dateOfEaster = "В 2046 году Пасха празднуется 29 апреля"
        case "2047": secondVC.dateOfEaster = "В 2047 году Пасха празднуется 21 апреля"
        case "2048": secondVC.dateOfEaster = "В 2048 году Пасха празднуется 5 апреля"
        case "2049": secondVC.dateOfEaster = "В 2049 году Пасха празднуется 25 апреля"
        case "2050": secondVC.dateOfEaster = "В 2050 году Пасха празднуется 17 апреля"
        case "2051": secondVC.dateOfEaster = "В 2051 году Пасха празднуется 7 мая"
        case "2052": secondVC.dateOfEaster = "В 2052 году Пасха празднуется 21 апреля"
        case "2053": secondVC.dateOfEaster = "В 2053 году Пасха празднуется 13 апреля"
        case "2054": secondVC.dateOfEaster = "В 2054 году Пасха празднуется 3 мая"
        case "2055": secondVC.dateOfEaster = "В 2055 году Пасха празднуется 18 апреля"
        case "2056": secondVC.dateOfEaster = "В 2056 году Пасха празднуется 9 апреля"
        case "2057": secondVC.dateOfEaster = "В 2057 году Пасха празднуется 29 апреля"
        case "2058": secondVC.dateOfEaster = "В 2058 году Пасха празднуется 14 апреля"
        case "2059": secondVC.dateOfEaster = "В 2059 году Пасха празднуется 4 мая"
        case "2060": secondVC.dateOfEaster = "В 2060 году Пасха празднуется 25 апреля"
        case "2061": secondVC.dateOfEaster = "В 2061 году Пасха празднуется 10 апреля"
        case "2062": secondVC.dateOfEaster = "В 2062 году Пасха празднуется 30 апреля"
        case "2063": secondVC.dateOfEaster = "В 2063 году Пасха празднуется 22 апреля"
        case "2064": secondVC.dateOfEaster = "В 2064 году Пасха празднуется 13 апреля"
        case "2065": secondVC.dateOfEaster = "В 2065 году Пасха празднуется 26 апреля"
        case "2066": secondVC.dateOfEaster = "В 2066 году Пасха празднуется 18 апреля"
        case "2067": secondVC.dateOfEaster = "В 2067 году Пасха празднуется 10 апреля"
        case "2068": secondVC.dateOfEaster = "В 2068 году Пасха празднуется 29 апреля"
        case "2069": secondVC.dateOfEaster = "В 2069 году Пасха празднуется 14 апреля"
        case "2070": secondVC.dateOfEaster = "В 2070 году Пасха празднуется 4 мая"
        case "2071": secondVC.dateOfEaster = "В 2071 году Пасха празднуется 19 апреля"
        case "2072": secondVC.dateOfEaster = "В 2072 году Пасха празднуется 10 апреля"
        case "2073": secondVC.dateOfEaster = "В 2073 году Пасха празднуется 30 апреля"
        case "2074": secondVC.dateOfEaster = "В 2074 году Пасха празднуется 22 апреля"
        case "2075": secondVC.dateOfEaster = "В 2075 году Пасха празднуется 7 апреля"
        case "2076": secondVC.dateOfEaster = "В 2076 году Пасха празднуется 26 апреля"
        case "2077": secondVC.dateOfEaster = "В 2077 году Пасха празднуется 18 апреля"
        case "2078": secondVC.dateOfEaster = "В 2078 году Пасха празднуется 8 мая"
        case "2079": secondVC.dateOfEaster = "В 2079 году Пасха празднуется 23 апреля"
        case "2080": secondVC.dateOfEaster = "В 2080 году Пасха празднуется 14 апреля"
        case "2081": secondVC.dateOfEaster = "В 2081 году Пасха празднуется 4 мая"
        case "2082": secondVC.dateOfEaster = "В 2082 году Пасха празднуется 19 апреля"
        case "2083": secondVC.dateOfEaster = "В 2083 году Пасха празднуется 11 апреля"
        case "2084": secondVC.dateOfEaster = "В 2084 году Пасха празднуется 30 апреля"
        case "2085": secondVC.dateOfEaster = "В 2085 году Пасха празднуется 15 апреля"
        case "2086": secondVC.dateOfEaster = "В 2086 году Пасха празднуется 7 апреля"
        case "2087": secondVC.dateOfEaster = "В 2087 году Пасха празднуется 27 апреля"
        case "2088": secondVC.dateOfEaster = "В 2088 году Пасха празднуется 18 апреля"
        case "2089": secondVC.dateOfEaster = "В 2089 году Пасха празднуется 1 мая"
        case "2090": secondVC.dateOfEaster = "В 2090 году Пасха празднуется 23 апреля"
        case "2091": secondVC.dateOfEaster = "В 2091 году Пасха празднуется 8 апреля"
        case "2092": secondVC.dateOfEaster = "В 2092 году Пасха празднуется 27 апреля"
        case "2093": secondVC.dateOfEaster = "В 2093 году Пасха празднуется 19 апреля"
        case "2094": secondVC.dateOfEaster = "В 2094 году Пасха празднуется 11 апреля"
        case "2095": secondVC.dateOfEaster = "В 2095 году Пасха празднуется 24 апреля"
        case "2096": secondVC.dateOfEaster = "В 2096 году Пасха празднуется 15 апреля"
        case "2097": secondVC.dateOfEaster = "В 2097 году Пасха празднуется 5 мая"
        case "2098": secondVC.dateOfEaster = "В 2098 году Пасха празднуется 27 апреля"
        case "2099": secondVC.dateOfEaster = "В 2099 году Пасха празднуется 12 апреля"
        case "2100": secondVC.dateOfEaster = "В 2100 году Пасха празднуется 2 мая"
        default:
            break
        }
    }
    
    @IBAction func calculatePressed() {
    guard textFiled.text != "" else {
        showAlert(title: "Ошибка",
                  message: "Пожалуйста, выберите год празднования Пасхи.")
        return
    }
    
    performSegue(withIdentifier: "calculate", sender: nil)
    }
    
     @IBAction func unwindSegue(segue:UIStoryboardSegue) { textFiled.text = nil }
}

// MARK: - Alert Controller
extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
