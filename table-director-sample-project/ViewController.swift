//
//  ViewController.swift
//  table-director-sample-project
//
//  Created by Abzal Toremuratuly on 11/12/20.
//

import UIKit
import TableKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var tableView = UITableView()
    
    private lazy var tableDirector = TableDirector(tableView: tableView)
    private lazy var viewModel = ViewModel()
    private lazy var firstCellAction = TableRowAction<FirstCell>(.click) {
        print($0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        markup()
        subscribe()
    }
    
    private func subscribe() {
        tableDirector += viewModel.firstCellViewModels.map { TableRow<FirstCell>(item: $0, actions: [firstCellAction]) }
        tableDirector += viewModel.secondCellViewModels.map { TableRow<SecondCell>(item: $0) }
    }
    
    private func markup() {
        view.backgroundColor = .red
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

