//
//  ReminderDetailViewController.swift
//  Today
//
//  Created by 양호준 on 2021/12/05.
//

import UIKit

class ReminderDetailViewController: UITableViewController {
    var reminder: Reminder?

    func configure(with reminder: Reminder) {
        self.reminder = reminder
    }
}
