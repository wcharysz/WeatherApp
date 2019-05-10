//
//  ViewModel.swift
//  Weather App
//
//  Created by Wojciech Charysz on 10.05.2019.
//  Copyright © 2019 Wojciech Charysz. All rights reserved.
//

import Foundation


class ViewModel {
    
    unowned var delegate: ViewController
    
    init(_ controller: ViewController) {
        delegate = controller
    }
    
    //MARK - UIPickerViewDataSource
    
    func numberOfRowsInComponent(_ component: Int) -> Int {
        return Locale.isoRegionCodes.count
    }
    
    func titleForRow(_ row: Int) -> String? {
        let isoCode = Locale.isoRegionCodes[row]
        
        return Locale.current.localizedString(forRegionCode: isoCode)
    }
    
    func didSelectPicker(_ row: Int) {
        
    }
    
}
