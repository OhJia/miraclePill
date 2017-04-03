//
//  ViewController.swift
//  MiraclePill
//
//  Created by Jiashan Wu on 4/3/17.
//  Copyright © 2017 Jiashan Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    // Header
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var pillTitle: UILabel!
    @IBOutlet weak var priceTitle: UILabel!
    @IBOutlet weak var divider: UIView!
    
    // Form
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var zipcodeTextField: UITextField!
    
    let states = ["Alabama", "New York", "Maine", "California"]
    
    // Submit button
    @IBOutlet weak var buyNowBtn: UIButton!
    
    // Success indicator
    @IBOutlet weak var successIndicatorImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func statePickerBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipcodeLabel.isHidden = true
        zipcodeTextField.isHidden = true
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        pillImage.isHidden = true
        pillTitle.isHidden = true
        priceTitle.isHidden = true
        divider.isHidden = true
        
        nameLabel.isHidden = true
        nameTextField.isHidden = true
        streetLabel.isHidden = true
        streetTextField.isHidden = true
        cityLabel.isHidden = true
        cityTextField.isHidden = true
        stateLabel.isHidden = true
        statePickerBtn.isHidden = true
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipcodeLabel.isHidden = true
        zipcodeTextField.isHidden = true
        
        buyNowBtn.isHidden = true
        
        successIndicatorImage.isHidden = false

    }
    
    // must implement for UIPickerViewDataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // number of component (picker)
        return 1
    }

    // must implement for UIPickerViewDataSource
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        zipcodeLabel.isHidden = false
        zipcodeTextField.isHidden = false
    }
}

