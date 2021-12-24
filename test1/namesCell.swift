
import UIKit
import SnapKit

class NamesCell: UITableViewCell {
    
    
    var namesTitle = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(namesTitle)
        namesTitle.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(frame.height)
        }
        configureNamesTitle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configureNamesTitle() {
        namesTitle.numberOfLines = 1
        namesTitle.adjustsFontSizeToFitWidth = true
        namesTitle.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    }
    }


