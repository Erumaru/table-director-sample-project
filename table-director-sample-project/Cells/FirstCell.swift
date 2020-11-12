//
//  FirstCell.swift
//  table-director-sample-project
//
//  Created by Abzal Toremuratuly on 11/12/20.
//

import UIKit
import TableKit

public final class FirstCell: UITableViewCell, ConfigurableCell {
    public func configure(with string: FirstCellViewModel) {
        textLabel?.text = string.someInfo
    }
}
