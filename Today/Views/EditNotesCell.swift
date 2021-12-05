//
//  EditNotesCell.swift
//  Today
//
//  Created by 양호준 on 2021/12/05.
//

import UIKit

class EditNotesCell: UITableViewCell {
    @IBOutlet var notesTextView: UITextView!
    
    func configure(notes: String) {
        notesTextView.text = notes
    }
}
