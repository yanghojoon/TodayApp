//
//  ReminderDetailViewController.swift
//  Today
//
//  Created by 양호준 on 2021/12/05.
//

import UIKit

class ReminderDetailViewController: UITableViewController {
    private var detailViewDataSource: ReminderDetailViewDataSource?
    private var reminder: Reminder?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let reminder = reminder else {
            fatalError("No reminder found for detail view")
        }
        
        detailViewDataSource = ReminderDetailViewDataSource(reminder: reminder)
        tableView.dataSource = detailViewDataSource
    }

    func configure(with reminder: Reminder) {
        self.reminder = reminder
    }
}
