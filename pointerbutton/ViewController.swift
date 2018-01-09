//
//  ViewController.swift
//  pointerbutton
//
//  Created by Nosferatu on 9/1/18.
//  Copyright © 2018 luissancar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   

    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var uiswi: UISwitch!

    @IBOutlet weak var listaPickerView: UIPickerView!
    
    var  pickerData = ["Murcia", "Andalucia", "Galicia", "Tarbania", "Castilla"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        slider.maximumValue=100
        slider.minimumValue=0
        
        self.listaPickerView.dataSource = self
        self.listaPickerView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        print("Elemento pinchado \(pickerData[row])")    }
    
    
    
    
    
    
    
    
    

    

    @IBAction func pulsarButton(_ sender: Any) {
        if (uiswi.isOn) {
            print("UISwitch On")}
        else {
            print("UISwitch Off")}
        print("slider \(slider.value)")
        print("Elemento seleccionado \(pickerData[listaPickerView.selectedRow(inComponent: 0)])")
         }

}

