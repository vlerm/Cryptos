//
//  CryptoTableViewCell.swift
//  CryptoRate
//
//  Created by Вадим Лавор on 22.03.22.
//

import UIKit

class CryptoTableViewCell: UITableViewCell {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    static let identifier = "CryptoTableViewCellId"

    override func awakeFromNib() {
        super.awakeFromNib()
        Utilities.setGradientBackground(view: self, colorTop: UIColor(red: 0.0/255.0, green: 149.0/255.0, blue: 156.0/255.0, alpha: 1.0).cgColor, colorBottom: UIColor(red: 156.0/255.0, green: 194.0/255.0, blue: 158.0/255.0, alpha: 1.0).cgColor)
    }
    
    func configure(with viewModel: CryptoViewModel) {
        nameLabel.text = viewModel.name
        symbolLabel.text = viewModel.symbol
        priceLabel.text = viewModel.price
        logoImageView.image = UIImage(named: "\(viewModel.symbol)")
    }
    
}
