//
//  ViewController.swift
//  Today
//
//  Created by 양호준 on 2021/12/05.
//

import UIKit

class ReminderListViewController: UITableViewController {
    private var reminderListDataSource: ReminderListDataSource?
    
    static let showDetailSegueIdentifier = "ShowReminderDetailSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reminderListDataSource = ReminderListDataSource()
        tableView.dataSource = reminderListDataSource
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Self.showDetailSegueIdentifier,
           let destination = segue.destination as? ReminderDetailViewController,
           let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            let reminder = Reminder.testData[indexPath.row]
            destination.configure(with: reminder)
        }
    }
}
