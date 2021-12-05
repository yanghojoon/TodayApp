//
//  EditDateCell.swift
//  Today
//
//  Created by 양호준 on 2021/12/05.
//

import UIKit

class EditDateCell: UITableViewCell {
    @IBOutlet var datePicker: UIDatePicker!
    
    func configure(date: Date) {
        datePicker.date = date
    }
}
