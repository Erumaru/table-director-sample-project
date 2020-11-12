//
//  FirstCell.swift
//  table-director-sample-project
//
//  Created by Abzal Toremuratuly on 11/12/20.
//

import UIKit
import TableKit

public final class SecondCell: UITableViewCell, ConfigurableCell {
    public func configure(with string: SecondCellViewModel) {
        textLabel?.text = string.someInfo
    }
}
