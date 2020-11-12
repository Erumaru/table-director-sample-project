//
//  FirstCell.swift
//  table-director-sample-project
//
//  Created by Abzal Toremuratuly on 11/12/20.
//

import UIKit
import TableKit

public final class SecondCell: UITableViewCell, ConfigurableCell {
    private lazy var label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
    public func configure(with string: SecondCellViewModel) {
        label.text = string.someInfo
    }
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        markup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func markup() {
        contentView.addSubview(label)
        
        label.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
