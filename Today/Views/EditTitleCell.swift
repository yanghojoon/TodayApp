//
//  EditTitleCell.swift
//  Today
//
//  Created by 양호준 on 2021/12/05.
//

import UIKit

class EditTitleCell: UITableViewCell {
    @IBOutlet var titleTextField: UITextField!
    
    func configure(title: String) {
        titleTextField.text = title
    }
}
