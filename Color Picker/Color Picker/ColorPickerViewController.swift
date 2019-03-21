//
//  ColorsPickerViewController.swift
//  Color Picker
//
//  Created by John Williams III on 3/20/19.
//  Copyright © 2019 John Williams III. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let colors = ["Red","Orange","Yellow","Green","Blue","Purple"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.red
        label.text = "Red"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if colors[row] == "Red"
        {
            self.view.backgroundColor = UIColor.red
            label.text = "Red"
        }
        if colors[row] == "Orange"
        {
            self.view.backgroundColor = UIColor.orange
            label.text = "Orange"
        }
        if colors[row] == "Yellow"
        {
            self.view.backgroundColor = UIColor.yellow
            label.text = "Yellow"
        }
        if colors[row] == "Green"
        {
            self.view.backgroundColor = UIColor.green
            label.text = "Green"
        }
        if colors[row] == "Blue"
        {
            self.view.backgroundColor = UIColor.blue
            label.text = "Blue"
        }
        if colors[row] == "Purple"
        {
            self.view.backgroundColor = UIColor.purple
            label.text = "Purple"
        }
    }

}
